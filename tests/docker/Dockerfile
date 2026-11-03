FROM node:24-bookworm-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends git ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV DISABLE_TELEMETRY=1

RUN mkdir -p /home/node/project && chown node:node /home/node/project
COPY tests/docker/smoke-test.sh /opt/skills-smoke-test.sh

USER node
WORKDIR /home/node/project
RUN git init --quiet

CMD ["bash"]
