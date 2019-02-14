#!/bin/bash
set -e

echo "#################################################"
echo "Starting GitHub Action for cpplint"

sh -c "$*"

echo "#################################################"
echo "Completed GitHub Action for cpplint"
