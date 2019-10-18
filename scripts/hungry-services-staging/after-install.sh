if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    cd /home/deploy/hungry-services/cmd/svc-auth/proto_auth
    protoc --go_out=plugins=grpc:. *.proto
    cd ../
    sudo -E go build -o main
fi
