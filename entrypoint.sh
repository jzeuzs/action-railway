#!/bin/sh -l

if [ -n $1 ]; then
    export RAILWAY_TOKEN=$1
fi

if [ -n $2 ]; then
    railway up --service=$2 --detach || error_code=$?
else
    railway up --detach || error_code=$?
fi

if [ "${error_code}" -ne 0 ]; then
    exit $error_code
else
    echo "::set-output name=status::Success"
fi
