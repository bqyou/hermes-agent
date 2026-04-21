FROM nousresearch/hermes-agent:latest

# Optional: expose a port if you want the dashboard later (not needed for Telegram)
# EXPOSE 8080

# Hermes will use the mounted volume for persistence
CMD ["hermes", "gateway", "start"]
