#!/usr/bin/env bash
SPM_MODEL_PATH=tests/korean-bulk/sp-model.model
TARGET_DIR=tests/korean-bulk-encoded/
CHECKPOINT_DIR=tests/korean-bulk-test-run/

cd ..
BASEDIR=$(pwd)
echo $BASEDIR
echo '>>>> Clean Start GPT-2 Pretraining...'

gpt-2 \
    $CHECKPOINT_DIR \
    $TARGET_DIR \
    $SPM_MODEL_PATH \
    --batch-size 2 \
    --g-accum-gradients 4 \
    --n-ctx 1024 \
    --n-embed 128 \
    --n-hidden 768 \
    --n-head 12 \
    --n-layer 12 \
    --epochs 40 \
    --log-every 1 \
    --save-every 1000 \
    --validate-every 1000 \
    --clean