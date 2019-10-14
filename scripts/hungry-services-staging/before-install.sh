if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    echo $DEPLOYMENT_GROUP_NAME
    /home/ubuntu/.local/bin/aws s3 cp s3://hungry-resource/github-production.pem /root/.ssh/github-production.pem
    ssh-add /root/.ssh/github-production.pem
    git clone -b staging ssh://git@github.com:tryhungry/hungry-services.git /home/deploy/hungry_services
fi
