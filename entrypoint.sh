#!/bin/sh -l

if [ $1 ]; then
    export RAILWAY_TOKEN=$1
fi

railway up --detach || error_code=$?

if [ "${error_code}" -ne 0 ]; then
    exit $error_code
else
    echo "::set-output name=status::Success"
fi
