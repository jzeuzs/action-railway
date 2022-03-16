FROM debian:bullseye-slim

RUN apt-get update -y && apt-get install -y curl
RUN curl -fsSL https://railway.app/install.sh | sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
