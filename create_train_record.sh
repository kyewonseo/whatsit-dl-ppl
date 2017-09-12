#!/bin/bash

python create_tf_record.py \
    --label_map_path=gs://whatsit-dl-model/1/data/label_map.pbtxt \
    --data_dir=/dataset/VOCdevkit --folder=VOC2012 --set=train \
    --output_path=gs://whatsit-dl-model/1/data/train.record
