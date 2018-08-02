#!/bin/sh
# Wait until an introspection query would work
# Then run the interface generator
URL="$INPUT_SERVER_ENDPOINT"
QUERY="?query=query%20IntrospectionTypeQuery%20%7B__schema%20%7Btypes%20%7Bname%7D%7D%7D"
echo "Checking $URL"
wait-on "http-get://$URL$QUERY" &&\
echo "Generating schema.json" &&\
apollo-codegen introspect-schema http://"$URL$QUERY" --output schema.json &&\
echo "Outputing server typings" &&\
gql-gen --schema schema.json --template graphql-codegen-typescript-template --out $OUTPUT_SERVER_TYPINGS --skip-documents &&\
echo "Outputting client typings" &&\
apollo-codegen generate $INPUT_CLIENT_GRAPHQL_FILES --schema schema.json --target typescript --output $OUTPUT_CLIENT_TYPINGS