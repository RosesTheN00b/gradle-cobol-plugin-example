#!/bin/bash
set -e

cd gradle-cobol-plugin
gradle clean
gradle publish
gradle publish -PgenerateLatest
