#!/bin/bash
cd /content/
rm -rf ./app
mkdir ./app
cd /content/app
git clone https://github.com/milochen0418/pynecone-colab-ide.git
#git clone -b tag-pc-0-1-31 https://github.com/milochen0418/pynecone-colab-ide.git
source ./pynecone-colab-ide/utils/setup_base.sh
