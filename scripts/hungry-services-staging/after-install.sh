#!/bin/bash
if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    go build *.go
fi
