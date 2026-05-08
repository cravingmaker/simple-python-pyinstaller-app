#!/usr/bin/env sh

echo 'The following command runs your Python application'
echo 'and makes it available for use.'
set -x
# Running the app with dummy arguments and keeping it alive until killed
(./dist/add2vals 10 20; sleep infinity) &
sleep 1
echo $! > .pidfile
set +x

echo 'Now...'
echo 'The Python application is "deployed" and running in the background.'
echo 'It will be automatically terminated after 1 minute by the pipeline.'
