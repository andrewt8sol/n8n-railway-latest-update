# Enable community/custom nodes
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=RandomPass1234
ENV GENERIC_TIMEZONE=America/New_York
ENV N8N_ALLOW_LOADING_CUSTOM_NODES=true
ENV N8N_DISABLE_PRODUCTION_MAIN_PROCESS=true

# Install LangChain nodes
RUN npm install --location=global @n8n/n8n-nodes-langchain
