#!/usr/bin/env bash

# Notes:
#  - There's no pidof on OSX, but pgrep does a similar job
#  - As jupyter-notebook really is just a script (in python), we need
#    to match the full (-f) command.

# Setup environment

port=9999

# Start / stop / status of the notebook server

if [ "$1" = "start" ]; then
  rm -f /tmp/jupyterlab.log
  nohup jupyter lab --no-browser --port=$port >& /tmp/jupyterlab.log &
  echo "Jupyter Lab launched on port $port; log file is /tmp/jupyterlab.log..."
elif [ "$1" = "stop" ]; then
  PID=$(pgrep -f jupyter-lab)
  if [ "x$PID" = "x" ]; then
     echo "Jupyter Lab isn't running."
  else
     kill $PID
     echo "Jupyter Lab stopped..."
  fi
elif [ "$1" = "status" ]; then
  PID=$(pgrep -f jupyter-lab)
  if [ "x$PID" = "x" ]; then
     echo "Jupyter Lab isn't running."
  else
     echo "JupyterLab is up and running on port $port."
  fi
else
  echo "Unknown keyword: $1 - must be one of 'start', 'stop', or 'status'."
fi
