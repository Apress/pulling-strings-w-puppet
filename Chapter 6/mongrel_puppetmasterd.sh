#!/bin/bash
# name: mongrel_puppetmasterd
# Start a Puppet Master Server instance.

if ! [[ "$1" -gt 0 ]]; then
echo "ERROR: You must provide a port to run this puppet master on."
echo "Ensure your apache load balancer is configured to talk to these servers"
exit 1
fi

MASTERPORT="$1"
shift

puppetmasterd \
--pidfile=/var/www/puppet/run/puppetmasterd."${MASTERPORT}".pid \
--servertype=mongrel \
--masterport="${MASTERPORT}" \
$*


