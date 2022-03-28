#!/bin/bash

curl https://docs.github.com/public/schema.docs.graphql > lib/schema/schema.graphql
flutter pub run build_runner build --delete-conflicting-outputs