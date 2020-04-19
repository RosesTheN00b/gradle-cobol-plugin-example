#!/bin/bash
set -e

cd gradle-cobol-plugin
./gradlew clean
./gradlew publish
./gradlew publish -PgenerateLatest
