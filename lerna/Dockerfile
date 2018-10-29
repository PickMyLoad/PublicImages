FROM node:10.12.0-alpine
RUN yarn global add lerna@^3.3.0
RUN apk add --no-cache git openssh
WORKDIR /working_dir
VOLUME /working_dir
VOLUME /home/node/.ssh
ENV NPM_TOKEN=
COPY --chown=node entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]