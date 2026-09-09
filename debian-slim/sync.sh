#!/bin/bash

# check that we have good linode credentials

# create key and casa s3 bucket if not found

if linode-cli object-storage keys-list --text | cut -f3 | grep -x casa; then
  echo casa is found
else
  echo no casa

# sync s3 casa bucket to /root

#rclone sync linode:casa /root --bidir
