FROM debian:bullseye-slim

WORKDIR /usr/src/app

RUN apt-get update -y && apt-get install -y curl
RUN curl -fsSL https://railway.app/install.sh | sh

COPY . .

ENTRYPOINT ["entrypoint.sh"]
