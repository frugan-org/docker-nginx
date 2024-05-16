#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
#set -o xtrace # Uncomment this line for debugging purpose

cd /etc/nginx

{
	echo ''
	echo 'include "/etc/nginx/custom.d/*.conf";'
} >>nginx.conf

####

#https://stackoverflow.com/a/46433245/3929620
# shellcheck source=/dev/null
. /docker-entrypoint.sh
