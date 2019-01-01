#!/usr/bin/env bash

# Notes:
#  - There's no pidof on OSX, but pgrep does a similar job
#  - As jupyter-notebook really is just a script (in python), we need
#    to match the full (-f) command.

# Setup environment

port=9999

# Start / stop / status of the notebook server

if [ "$1" = "start" ]; then
  rm -f /tmp/notebook.log
  nohup jupyter notebook --no-browser --port=$port >& /tmp/notebook.log &
  echo "Notebook server launched on port $port; log file is /tmp/notebook.log..."
elif [ "$1" = "stop" ]; then
  PID=$(pgrep -f jupyter-notebook)
  if [ "x$PID" = "x" ]; then
     echo "Notebook server isn't running."
  else
     kill $PID
     echo "Notebook server stopped..."
  fi
elif [ "$1" = "status" ]; then
  PID=$(pgrep -f jupyter-notebook)
  if [ "x$PID" = "x" ]; then
     echo "Notebook server isn't running."
  else
     echo "Notebook server is up and running on port $port."
  fi
else
  echo "Unknown keyword: $1 - must be one of 'start', 'stop', or 'status'."
fi
