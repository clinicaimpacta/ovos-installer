#!/bin/bash

message="
By connecting to the Hivemind listener, HiveMind satellites gain access to a network of shared knowledge and capabilities, facilitating a unified and efficient voice assistant and automation experience.

Please enter the HiveMind listener port:"

HIVEMIND_PORT=$(whiptail --inputbox --title "Open Voice OS Installation - Satellite 2/4" "$message" 25 80 5678 3>&1 1>&2 2>&3)
export HIVEMIND_PORT

exit_status=$?
if [ "$exit_status" = 1 ]; then
  exit 1
fi