FROM node:14.15.4-slim

WORKDIR /home/node/app

RUN apt update && apt install

RUN usermod -u 1000 node

USER node

CMD ["sh", "-c", "npm install && tail -f /dev/null"]