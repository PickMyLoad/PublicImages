FROM node:9.8.0-alpine
RUN yarn global add create-react-app@^2.0.4 react-scripts-ts@^3.1.0

WORKDIR /working_dir
VOLUME /working_dir
ENTRYPOINT ["yarn"]
CMD ["create", "react-app"]