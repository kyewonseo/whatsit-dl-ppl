#! /bin/bash

source activate whatsit-dl-ppl
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

python ./object_detection/train.py \
    --logtostderr \
    --pipeline_config_path=/dataset/models/model/ssd_inception_v2_ppl.config \
    --train_dir=/dataset/models/model/train
