FROM nousresearch/hermes-agent:latest

ENV HERMES_HOME=/tmp/.hermes \
    HOME=/tmp \
    MESSAGING_CWD=/tmp/workspace \
    HERMES_SKIP_PERMISSIONS_SETUP=true

ENTRYPOINT []
CMD ["/bin/sh", "-lc", "mkdir -p /tmp/.hermes /tmp/workspace && exec hermes gateway start"]
