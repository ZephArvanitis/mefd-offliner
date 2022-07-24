#!/bin/bash

mwoffliner \
    --mwUrl https://handbook.mteriefire.com \
    --adminEmail $1 \
    --mwWikiPath "/w/" \
    --mwApiPath "/api.php" \
    --mwModulePath "/load.php"
