if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    cd /home/deploy/hungry-services/cmd/uc-auth
    go build *.go
fi
