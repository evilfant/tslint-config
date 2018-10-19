#!/usr/bin/env bash

set -e

echo "Matter token"
echo ${UI_BOT_TOKEN}

VERSION_CURRENT_PACKAGE=$(npm info @ptsecurity/tslint-config version)

echo ${VERSION_CURRENT_PACKAGE}

curl \
-i \
-X POST \
-H 'Content-Type: application/x-www-form-urlencoded' \
-d 'payload={
  "channel": "test-bot",
  "username": "Wall-e",
  "text": "#### TSLint Config was published.\n
  Package [https://www.npmjs.com/package/@ptsecurity/tslint-config](tslint-config@$VERSION_CURRENT_PACKAGE)\n
  [https://github.com/positive-js/tslint-config/blob/master/CHANGELOG.md](View changelog)"
}' https://chat.ptsecurity.com/hooks/${UI_BOT_TOKEN}
