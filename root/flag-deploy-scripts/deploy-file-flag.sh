#!/usr/bin/with-contenv bash

echo "put your commands to deploy the file based flag here"
echo "the /goldnugget/*.gn contains the flag"

# take flag and store it where it is needed
source /goldnugget/*.gn
sed -i -e "s/SED_GOLDNUGGET/$GOLDNUGGET/g" /opt/www/Readme.md


# remove flag from docker
cat /dev/null > /goldnugget/*.gn
