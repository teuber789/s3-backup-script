#!/bin/sh

# This is here bc the aws cli isn't
# properly excluding ._ files generated
# by macos.
find \
    /Volumes/MYBOOK/Files/ \
    -name ._* \
    -exec rm -f "{}" \;

aws \
    --profile teuber789 \
    s3 sync \
    /Volumes/MYBOOK/Files/ \
    s3://teuber789-files-backup/ \
    --exclude .DS_Store
