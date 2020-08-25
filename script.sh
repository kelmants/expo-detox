#!/bin/bash -e

# query expo.io to find most recent ipaUrl
IPA_URL=`curl https://expo.io/--/api/v2/versions |  python -c 'import sys, json; print json.load(sys.stdin)["androidUrl"]'`

# download tar.gz
TMP_PATH=bin/Exponent.apk
export $TMP_PATH $IPA_URL