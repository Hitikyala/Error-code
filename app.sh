#!/bin/bash

read -p "Enter the website to check the HTTP error code: " URL
http_code=$(curl --write-out %{http_code} --silent --output /dev/null $URL)

if [ $http_code -eq 200 ]; then
        echo "The Response code of $URL is : $http_code"
        echo "The HTTP connection is Success"
else
        echo "The Response code of $URL is : $http_code"
        echo "The HTTP connection is Failure"

fi

