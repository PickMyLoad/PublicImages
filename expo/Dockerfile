FROM node:9.8.0-alpine
RUN apk add --no-cache bash
RUN yarn global add expo-cli@^2.2.0

WORKDIR /working_dir
VOLUME /working_dir
ENTRYPOINT ["expo"]
CMD [""]