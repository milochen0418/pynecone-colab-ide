#!/bin/bash
# /content/app/pcrun.sh
APPEND_FILE=/content/app/append.py
PCCFG_FILE=pcconfig.py

if ! test -f "$APPEND_FILE"; then
    echo "$APPEND_FILE not exists."
    exit 
fi

if ! test -f "$PCCFG_FILE"; then
    echo "$PCCFG_FILE not exists."
    exit 
fi

if [ ! $(cat $PCCFG_FILE | grep exists) ]; then 
    echo -e "\n" >> $PCCFG_FILE
    cat $APPEND_FILE >> $PCCFG_FILE
    echo -e "\n" >> $PCCFG_FILE
fi
echo $@
pc run $@