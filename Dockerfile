FROM atendai/evolution-api:v1.8.2

# Forçamos a porta 10000 que é o padrão da Render
ENV PORT=10000
ENV SERVER_PORT=10000

# Configurações de Banco de Dados
ENV DATABASE_TYPE=sqlite
ENV DATABASE_SAVE_DATA_INSTANCE=true
ENV DATABASE_SAVE_DATA_CHATS=false
ENV DATABASE_SAVE_DATA_CONTACTS=false
ENV DATABASE_SAVE_DATA_MESSAGES=false

# Segurança e CORS (O que libera o seu site)
ENV AUTHENTICATION_API_KEY=Wesley123!
ENV CORS_ORIGIN="*"

# Expondo a porta correta
EXPOSE 10000

# Comando para forçar a porta na inicialização
CMD ["node", "dist/src/main.js", "--port", "10000"]
