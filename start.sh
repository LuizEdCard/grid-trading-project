#!/bin/bash

# Start the backend
echo "Starting the backend..."
cd BackendPython/src
python main.py &
BACKEND_PID=$!

# Wait for the backend to start
echo "Waiting for the backend to start..."
sleep 5

# Start the frontend
echo "Starting the frontend..."
cd ../../algo-grid-pilot
npm start &
FRONTEND_PID=$!

# Function to handle script termination
function cleanup {
  echo "Stopping the backend and frontend..."
  kill $BACKEND_PID
  kill $FRONTEND_PID
  exit 0
}

# Register the cleanup function for SIGINT and SIGTERM
trap cleanup SIGINT SIGTERM

# Wait for user to press Ctrl+C
echo "Press Ctrl+C to stop both servers"
wait