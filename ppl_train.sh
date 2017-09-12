#! /bin/bash

source activate whatsit-dl-ppl
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

python ./object_detection/train.py \
    --logtostderr \
    --pipeline_config_path=gs://whatsit-dl-model/1/models/model/ssd_inception_v2_ppl.config \
    --train_dir=gs://whatsit-dl-model/1/models/model/train
