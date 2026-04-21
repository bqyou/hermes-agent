FROM nousresearch/hermes-agent:latest

# Set environment variables so Hermes uses the mounted volume
ENV HERMES_HOME=/data/.hermes \
    HOME=/data \
    HERMES_SKIP_PERMISSIONS_SETUP=true \
    MESSAGING_CWD=/data/workspace \
    USER=root

# The official image already runs as root, so we don't need extra setup here
CMD ["hermes", "gateway", "start"]
