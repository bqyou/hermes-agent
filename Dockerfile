FROM nousresearch/hermes-agent:latest

ENV HERMES_HOME=/data/.hermes \
    HOME=/data \
    HERMES_SKIP_PERMISSIONS_SETUP=true \
    MESSAGING_CWD=/data/workspace

CMD ["/bin/sh", "-lc", "mkdir -p /data/.hermes /data/workspace && chmod -R 777 /data || true && exec hermes gateway start"]
