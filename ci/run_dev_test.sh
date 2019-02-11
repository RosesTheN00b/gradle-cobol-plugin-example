#! /bin/bash
set -e
sh ci/pull_plugin_sources.sh

cd gradle-cobol-plugin
git checkout dev
cd ..

sh ci/build_plugin.sh
sh ci/install_plugin.sh
sh ci/exec_tests.sh
