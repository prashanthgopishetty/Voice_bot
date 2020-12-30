#!/bin/bash
rasa run --enable-api -p 5005 --debug &
rasa run actions --actions actions &

python3 -m http.server 8888 
