#!/bin/sh
# This is a wrapper so that wp-cli can run as the www-data user
sudo -E -u www-data /usr/local/bin/wp-cli.phar $*
