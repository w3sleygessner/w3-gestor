FROM atendai/evolution-api:v1.8.2

# Variáveis de Banco de Dados e Performance
ENV DATABASE_TYPE=sqlite
ENV DATABASE_SAVE_DATA_INSTANCE=true
ENV DATABASE_SAVE_DATA_CHATS=false
ENV DATABASE_SAVE_DATA_MESSAGES=false

# Segurança e Acesso
ENV AUTHENTICATION_API_KEY=Wesley123!
ENV CORS_ORIGIN="*"

# Comando para rodar de forma leve
CMD ["node", "dist/src/main.js"]
