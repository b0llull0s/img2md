#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: img2md <image-file>"
    exit 1
fi

IMAGE_FILE="$1"

if [ ! -f "$IMAGE_FILE" ]; then
    echo "File not found!"
    exit 1
fi

MIME_TYPE=$(file --mime-type -b "$IMAGE_FILE")

BASE64_STRING=$(base64 -w 0 "$IMAGE_FILE")

echo "<img src=\"data:${MIME_TYPE};base64,${BASE64_STRING}\" alt=\"image\" />"
