#!/bin/bash
set -e

echo "Writing service account into $GOOGLE_APPLICATION_CREDENTIALS"

echo $SERVICE_ACCOUNT > $GOOGLE_APPLICATION_CREDENTIALS 

gcloud auth activate-service-account --key-file=$GOOGLE_APPLICATION_CREDENTIALS

exec "$@"
