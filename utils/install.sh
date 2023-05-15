#!/bin/bash
echo "Node installation procedure"
npm install -g n
n 16.6.0
node --version
echo "Bun installation procedure"
curl -fsSL https://bun.sh/install | bash -s -- bun-v0.5.9
~/.bun/bin/bun --version
/root/.bun/bin/bun --version

echo "Python pynecone installation procedure"
pip -q install pynecone==0.1.29
python --version
pc version

echo "pynecone-examples dependency installation procedure"
pip -q install openai
pip -q install plotly-express
pip -q install plotly
pip -q install pandas
pip -q install googletrans-py==4.0.0
pip -q install requests>=2.28.1
pip -q install pytz==2022.7.1

echo "Install localtunnel tool"
npm -q install localtunnel

echo "Install package for generate Url's QR code"
pip -q install pyqrcode
pip -q install pypng
pip -q install Pillow


echo "Install IDE's termianl"
pip -q install colab-xterm
