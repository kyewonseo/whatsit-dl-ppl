#! /bin/bash

source activate whatsit-dl-ppl
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

python ./object_detection/eval.py \
    --logtostderr \
    --pipeline_config_path=gs://whatsit-dl-model/1/models/model/ssd_inception_v2_ppl.config \
    --checkpoint_dir=gs://whatsit-dl-model/1/models/model/train \
    --eval_dir=gs://whatsit-dl-model/1/models/model/eval

