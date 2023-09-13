#!/bin/bash
curl -LJO https://unified-agent.s3.amazonaws.com/wss-unified-agent.jar &&

if [[ "$(curl -sL https://unified-agent.s3.amazonaws.com/wss-unified-agent.jar.sha256)" != "$(sha256sum wss-unified-agent.jar)" ]] ; then
        echo "shit is fucked, don't proceed"
fi
