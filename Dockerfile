FROM atendai/evolution-api:v1.8.2

# Porta padrão da Render
ENV PORT=10000
ENV SERVER_PORT=10000

# Configurações de Banco de Dados (v1.8.2 aceita sqlite assim)
ENV DATABASE_TYPE=sqlite
ENV DATABASE_SAVE_DATA_INSTANCE=true
ENV DATABASE_SAVE_DATA_CHATS=false
ENV DATABASE_SAVE_DATA_CONTACTS=false
ENV DATABASE_SAVE_DATA_MESSAGES=false

# Segurança e Acesso
ENV AUTHENTICATION_API_KEY=Wesley123!
ENV CORS_ORIGIN="*"

EXPOSE 10000

CMD ["node", "dist/src/main.js"]
