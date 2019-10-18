if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    cd /home/deploy/hungry-services/cmd/svc-auth
    sudo -E go build *.go
fi
