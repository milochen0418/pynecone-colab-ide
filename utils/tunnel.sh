#!/bin/bash
echo "processes reset"
rm -f /content/app/backend.txt
rm -f /content/app/frontend.txt
kill -9 $(lsof -t -i:8000)
kill -9 $(lsof -t -i:3000)
echo "networking status reset"
npx localtunnel --port 8000 &>/content/app/backend.txt &
npx localtunnel --port 3000 &>/content/app/frontend.txt &
while [ $(cat /content/app/backend.txt | grep -oE "https://[^']+" | wc -m) -lt 16 ]; do sleep 1; done
while [ $(cat /content/app/frontend.txt | grep -oE "https://[^']+" | wc -m) -lt 16 ]; do sleep 1; done
echo "https://"$(grep -oP "https://\K[^']+" /content/app/backend.txt)  > /content/app/url
echo "https://"$(grep -oP "https://\K[^']+" /content/app/frontend.txt)  > /content/app/front_url
