if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    cd /home/deploy/hungry-services/cmd/uc-auth
    sudo -E go build *.go
fi
