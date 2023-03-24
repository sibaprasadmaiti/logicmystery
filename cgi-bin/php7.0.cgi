#!/bin/bash
PHPRC=$DOCUMENT_ROOT/../etc/php7.0
export PHPRC
umask 022
if [ "$REDIRECT_URL" != "" ]; then
  SCRIPT_NAME=$REDIRECT_URL
  export SCRIPT_NAME
fi
exec /usr/bin/php-cgi7.0
