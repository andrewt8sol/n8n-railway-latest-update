FROM n8nio/n8n:latest

# Become root to install global npm packages
USER root

# Install LangChain nodes globally
RUN npm install --location=global @n8n/n8n-nodes-langchain

# Switch back to n8n user
USER node

# Environment config
ENV N8N_ALLOW_LOADING_CUSTOM_NODES=true
ENV N8N_DISABLE_PRODUCTION_MAIN_PROCESS=true
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=RandomPass123
ENV GENERIC_TIMEZONE=America/New_York
