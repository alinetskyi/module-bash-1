#!/bin/bash
Name=$1

if [ -z "$Name" ]
then
Name='World'
fi
echo "Hello, $Name!"
