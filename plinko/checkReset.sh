#!/bin/bash

if [ $JOB_TRIGGERED_BY_NAME == "reset" ]; then
  echo "resetting job to failed state"
  return 1
fi