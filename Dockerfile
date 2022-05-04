FROM mesosphere/aws-cli
FROM python:3-alpine
FROM node:14-alpine
RUN yarn global add lerna@^4.0.0
RUN yarn global add less
RUN apk add --no-cache --virtual native-deps libstdc++ linux-headers git python2 make gcc g++ openssh bash
RUN yarn global add node-gyp
WORKDIR /home/node/
VOLUME /home/node/
ENV NPM_TOKEN=
CMD ["lerna"]
