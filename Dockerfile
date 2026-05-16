FROM atendai/evolution-api:v1.8.2

# No Railway, não precisamos forçar a porta 10000 como na Render
# Ele injeta a porta automaticamente na variável PORT

CMD ["node", "dist/src/main.js"]
