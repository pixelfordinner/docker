#!/bin/sh
# This is a wrapper so that wp-cli can run as the www-data user
sudo -u www-data /usr/local/bin/composer.phar $*
