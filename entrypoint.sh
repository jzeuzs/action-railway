#!/bin/sh -l

if [ $1 ]; then
    export RAILWAY_TOKEN=$1
    echo "RAILWAY_TOKEN"
fi

if [ $2 ]; then
    railway up --service=$2 --detach || error_code=$?
    echo "RAILWAY_SERVICE"
else
    railway up --detach || error_code=$?
fi

if [ "${error_code}" -ne 0 ]; then
    exit $error_code
else
    echo "::set-output name=status::Success"
fi
