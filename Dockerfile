FROM atendai/evolution-api:latest

# Porta que a Render exige
ENV PORT=10000
ENV SERVER_PORT=10000

# CONFIGURAÇÃO CORRIGIDA PARA V2
ENV DATABASE_ENABLED=true
ENV DATABASE_PROVIDER=sqlite3
ENV DATABASE_CONNECTION_URI="file:/evolution/store/data.db"

# PERFORMANCE (Evita travar o celular na conexão)
ENV DATABASE_SAVE_DATA_INSTANCE=true
ENV DATABASE_SAVE_DATA_CHATS=false
ENV DATABASE_SAVE_DATA_CONTACTS=false
ENV DATABASE_SAVE_DATA_MESSAGES=false

# SEGURANÇA E ACESSO
ENV AUTHENTICATION_API_KEY=Wesley123!
ENV CORS_ORIGIN="*"

# Permissões de pasta para não dar erro de escrita
USER root
RUN mkdir -p /evolution/store && chmod -R 777 /evolution/store

EXPOSE 10000

CMD ["node", "dist/src/main.js"]
