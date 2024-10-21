#!/bin/sh
sudo apt-get update
sudo apt-get install -y cmake
. venv/bin/activate
python -m pip install --no-cache-dir -r requirements.txt
gunicorn --bind=0.0.0.0:8000 app:app
