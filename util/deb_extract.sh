#!/bin/sh

set -o errexit

DEB=$1
if [ -z "$DEB" ]; then
  echo "Usage: deb_extract <deb file> [files to extract]"
  exit 1;
fi

if ! [ -f "$DEB" ]; then
  echo "$DEB package was not found"
  exit 1;
fi

shift

DATA_FILE=$(ar -t "$DEB" | grep data.tar)
ar -x "$DEB" $DATA_FILE

tar -xf $DATA_FILE "$@"

rm $DATA_FILE
