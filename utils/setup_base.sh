#!/bin/bash
echo "HOME = $HOME"
echo "Go to the APP_PATH = $PWD"
rm -rf ./py-webapp
git clone -b tag-pc-0-1-28 https://github.com/milochen0418/py-webapp.git
git clone https://github.com/milochen0418/pynecone-colab-ide.git
cp ./pynecone-colab-ide/utils/append.py ./
cp ./pynecone-colab-ide/utils/install.sh ./
cp ./pynecone-colab-ide/utils/tunnel.sh ./
cp ./pynecone-colab-ide/utils/qrshare.py ./
mkdir -p /opt/bin
ln -s /content/app/pynecone-colab-ide/utils/pcrun.sh /opt/bin/pcrun 
