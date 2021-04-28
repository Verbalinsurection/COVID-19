FROM node:16-slim

RUN apt-get update && \
  apt-get install git -y

WORKDIR /work

ADD . /work/

RUN npm install papaparse influx axios https-proxy-agent

ENTRYPOINT ["node", "/work/appNew.js"]
