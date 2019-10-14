#!/bin/sh
if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    echo $DEPLOYMENT_GROUP_NAME
    aws s3 cp s3://hungry-resource/github-production.pem /root/.ssh/github-production.pem
    eval $(ssh-agent -s)
    ssh-add /root/.ssh/github-production.pem
    rm -rf /home/deploy/hungry-services
    git clone -b feature/user-service ssh://git@github.com/tryhungry/hungry-services.git /home/deploy/hungry-services
fi
