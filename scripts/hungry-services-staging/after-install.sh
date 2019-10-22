if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    cd /home/deploy/hungry-services/cmd/svc-auth/proto_auth
    sudo protoc --go_out=plugins=grpc:. *.proto
    cd ../
    sudo go build -o main
fi
