FROM nousresearch/hermes-agent:latest

USER root

ENV HERMES_HOME=/opt/data/.hermes \
    HOME=/opt/data \
    MESSAGING_CWD=/opt/data/workspace \
    HERMES_SKIP_PERMISSIONS_SETUP=true

CMD ["/bin/sh", "-lc", "mkdir -p /opt/data/.hermes /opt/data/workspace && chmod -R 777 /opt/data || true && exec hermes gateway start"]
