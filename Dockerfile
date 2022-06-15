FROM mesosphere/aws-cli
FROM python:3.10.5-alpine
FROM node:14-alpine
RUN yarn global add lerna@^4.0.0
RUN yarn global add less
RUN apk add --no-cache --virtual libstdc++ linux-headers git python3 make gcc g++ openssh bash
ENV PYTHONPATH /usr/lib/python3.10.5/site-packages
RUN yarn global add node-gyp
WORKDIR /home/node/
VOLUME /home/node/
ENV NPM_TOKEN=
CMD ["lerna"]
