#!/bin/bash

if [ $# -ne 1 ];
then
  echo -e "ERROR:\nUSAGE: ./build_and_upload_site.sh <commit-message>\n"
  exit -1
fi

mkdocs build --clean && \
git add --all && \
git commit -m "${1}" && \
git push origin gh-pages
