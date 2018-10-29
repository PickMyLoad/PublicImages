FROM node:10.12.0-alpine
RUN yarn global add graphql@^0.11.7 apollo-codegen@^0.19.1 graphql-code-generator@^0.10.7 graphql-codegen-typescript-template@^0.10.7 wait-on@^2.1.0
COPY entrypoint.sh /entrypoint.sh

ENV OUTPUT_CLIENT_TYPINGS=
ENV INPUT_CLIENT_GRAPHQL_FILES=
ENV OUTPUT_SERVER_TYPINGS=
ENV INPUT_CLIENT_GRAPHQL_FILES=
WORKDIR /working_dir
VOLUME /working_dir
ENTRYPOINT /entrypoint.sh