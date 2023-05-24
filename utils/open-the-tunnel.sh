#!/bin/bash
echo -e "\n\n\n===================\n"
echo "Setup your environment"
echo "Open the following two URLs and submit the IP Address" 
echo "(OR just click the blue button 'Click to Continue' if the page has it)"
echo "IP Address = " $(wget -q -O - ipv4.icanhazip.com)
echo "init 1st URL 1st = " $(cat /content/app/url)
echo "init 2nd URL= " $(cat /content/app/front_url)
echo "If you don't understand, you can read the document ->  https://hackmd.io/@milochen0418/pynecone-colab-ide-tunnel-setup-doc"
echo -e "\n===================\n\n\n"
