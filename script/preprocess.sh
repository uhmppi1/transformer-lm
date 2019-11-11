#!/usr/bin/env bash

DATA_DIR=/media/pipaek/wdusb/data/mass-raw-nosplit-charex/
SPM_MODEL_PATH=tests/korean-bulk/sp-model.model
TARGET_DIR=tests/korean-bulk-encoded

cd ..
BASEDIR=$(pwd)
echo $BASEDIR
echo '>>>> Start Preprocessing for GPT-2...'

sp-encode \
    $DATA_DIR \
    $SPM_MODEL_PATH \
    $TARGET_DIR

echo '>>>> Preprocessing for GPT-2 Finished..'
