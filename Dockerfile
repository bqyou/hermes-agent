FROM nousresearch/hermes-agent:latest

# Use the data directory for everything
ENV HERMES_HOME=/data/.hermes \
    HOME=/data \
    HERMES_SKIP_PERMISSIONS_SETUP=true \
    MESSAGING_CWD=/data/workspace

# Create the directories with proper permissions at build time
RUN mkdir -p /data/.hermes /data/workspace && \
    chmod -R 777 /data

CMD ["hermes", "gateway", "start"]
