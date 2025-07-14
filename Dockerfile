FROM n8nio/n8n:latest

# Set timezone if needed
ENV TZ=Etc/UTC

# Copy local custom files (if any)
# COPY ./custom /home/node/.n8n/custom

# Make sure we use the correct user
USER root

# Set permissions for Render
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

# Default CMD
CMD ["n8n"]