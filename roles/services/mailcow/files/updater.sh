#!/usr/bin/env bash
# Update Mailcow
# Author: ntimo

cd /opt/mailcow || exit

echo "Updating updater before runnning update"
git fetch origin master
git checkout origin/master update.sh

if ./update.sh -c | grep -q 'Updated code is available'; then
  echo "Upgrading Mailcow"

  echo "Installing updates"
  echo 'y' | ./update.sh

  echo "Collecting Gargabe"
  echo 'y' | ./update.sh --gc
else
  echo "No updates are available"
fi