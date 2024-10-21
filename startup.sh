#!/bin/bash
apt-get update
apt-get install -y cmake
python -m pip install --no-cache-dir -r requirements.txt
gunicorn -b 0.0.0.0:8000 app:app
