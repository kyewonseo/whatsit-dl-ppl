#!/bin/bash

python create_tf_record.py \
    --label_map_path=./label_map.pbtxt \
    --data_dir=/dataset/VOCdevkit --folder=VOC2012 --set=val \
    --output_path=/dataset/data/val.record
