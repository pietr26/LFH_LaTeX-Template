#!/bin/bash

USER_ID="xxxxxx"
API_KEY="xxxxxx"
COLLECTION_ID="xxxxxx"
FILE_NAME="sources.bib"

echo "Syncing Zotero library..."

curl -s -o $FILE_NAME "https://api.zotero.org/users/$USER_ID/collections/$COLLECTION_ID/items?format=biblatex&key=$API_KEY"

if [ $? -eq 0 ]; then
    echo "✅ Done."
else
    echo "❌ Error while fetching the data."
fi