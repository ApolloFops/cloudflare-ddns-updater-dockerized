#!/bin/bash

/app/cloudflare.sh

# Run cron to run the updater script periodically
# TODO: Set the interval at which this runs based on the TTL environment variable
crond -f -l 8
