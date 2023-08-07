#!/bin/bash

cd ../backend
python app.py
echo -e "\n" | cat | tail -n 1 | python -c "import sys; sys.stdin.read(1)"
cd ../scheduler
sleep 10
python main.py

