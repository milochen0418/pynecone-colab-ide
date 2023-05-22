#!/bin/bash
echo -e "\n\n\n===================\n"
echo "Setup your environment"
echo "Open the following two URLs and submit the IP Address" 
echo "(OR just click the blue button 'Click to Continue' if the page has it)"
echo "URL A = " $(cat /content/app/front_url)
echo "URL B = " $(cat /content/app/url)
echo "IP Address = " $(wget -q -O - ipv4.icanhazip.com)
echo "If you don't understand, you can read the document ->  https://hackmd.io/@milochen0418/pynecone-colab-ide-tunnel-setup-doc"
