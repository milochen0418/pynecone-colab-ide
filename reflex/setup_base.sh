#!/bin/bash
for i in $(echo -e app bin download); do rm -rf /content/$i && mkdir /content/$i  ;done
git clone -b tag-$COLAB_IDE_VER https://github.com/milochen0418/pynecone-colab-ide.git /content/download/colab-ide
git clone -b tag-$COLAB_IDE_VER https://github.com/milochen0418/py-webapp.git /content/app/examples
cp /content/download/colab-ide/reflex/* /content/bin/