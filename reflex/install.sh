#!/bin/bash
echo "Node installation procedure"
npm install -g n
n 16.8.0
node --version
echo "Bun installation procedure"
curl -fsSL https://bun.sh/install | bash -s -- bun-v0.5.9
~/.bun/bin/bun --version
/root/.bun/bin/bun --version

echo "Python reflex installation procedure"
pip -q install reflex==0.2.0
python --version
reflex version

echo "examples's dependency installation procedure"
pip -q install openai
pip -q install plotly-express
pip -q install plotly
pip -q install pandas
pip -q install googletrans-py==4.0.0
pip -q install requests>=2.28.1
pip -q install pytz==2022.7.1

echo "Install tunnel tool"
pip -q install pyngrok

echo "Install package for generate Url's QR code"
pip -q install pyqrcode
pip -q install pypng
pip -q install Pillow


echo "Install IDE's termianl"
pip -q install colab-xterm

