#!/bin/bash
PORT=$1
if [ -z "$PORT" ]; then
echo "Uso: ./kill-port.sh <porta>"
exit 1
fi

PID=$(lsof -ti tcp:$PORT)
if [ -n "$PID" ]; then
echo "Matando processo na porta $PORT (PID: $PID)"
kill -9 $PID
else
echo "Nenhum processo na porta $PORT"
fi