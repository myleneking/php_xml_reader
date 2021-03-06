#!/bin/sh -x
#******************************#
# USAGE:                       #
# ./composer_update.sh project #
#******************************#

cd ./../php_xml_reader

# download composer.phar if does not exist.
if [ ! -f composer.phar ];
then
   echo "composer.phar does not exist."
   curl -s https://getcomposer.org/installer | php
fi

# get libraries and dependencies.
php composer.phar update --no-scripts

#create .gitignore
touch ../.gitignore
echo "php_xml_reader/composer.lock" >> ../.gitignore
echo "php_xml_reader/composer.phar" >> ../.gitignore
echo "php_xml_reader/vendor" >> ../.gitignore
