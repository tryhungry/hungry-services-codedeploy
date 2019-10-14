if [ "$DEPLOYMENT_GROUP_NAME" = "hungry-services-auth" ]
then
    echo $DEPLOYMENT_GROUP_NAME
    git clone -b staging ssh://git@github.com:tryhungry/hungry-services.git /home/deploy/hungry_services
fi
