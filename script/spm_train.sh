#!/usr/bin/env bash

DATA_DIR=/media/pipaek/wdusb/data/bpe-nosplit-charex/
TARGET_DIR=tests/korean-bulk
RAW_CORPUS_FILE=sp-text.txt
MODEL_PREFIX=sp-model
VOCAB_SIZE=32000

cd ..
BASEDIR=$(pwd)
echo $BASEDIR
echo '>>>> Start Building SPM Model for GPT-2...'

sp-train \
    $DATA_DIR \
    $TARGET_DIR/$RAW_CORPUS_FILE \
    $TARGET_DIR/$MODEL_PREFIX \
    --vocab-size $VOCAB_SIZE

echo '>>>> Building SPM Model for GPT-2 Finished..'
