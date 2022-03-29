#!/bin/bash

curl https://docs.github.com/public/schema.docs.graphql > lib/schema/schema.graphql
flutter pub run build_runner build --delete-conflicting-outputs

# Workaround to use both freezed and ferry, gql_code_builder is dependant on other packages
# as well, this is poor design on ferry's part.
cat lib/schema/serializers.gql.dart | sed 's/package:gql_code_builder\/src/package:graphql/g' > temp && mv temp lib/schema/serializers.gql.dart
cat lib/schema/schema.schema.gql.dart | sed 's/package:gql_code_builder\/src/package:graphql/g' > temp && mv temp lib/schema/schema.schema.gql.dart