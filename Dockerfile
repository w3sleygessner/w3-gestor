FROM atendai/evolution-api:v1.6.2

# Variáveis para a versão 1.6.2 (Nomes um pouco diferentes)
ENV DATABASE_TYPE=sqlite
ENV DATABASE_SAVE_DATA_INSTANCE=true
ENV DATABASE_SAVE_DATA_CHATS=false
ENV DATABASE_SAVE_DATA_MESSAGES=false
ENV AUTHENTICATION_API_KEY=Wesley123!
ENV CORS_ORIGIN="*"

CMD ["node", "dist/src/main.js"]
