# whatsit-dl-ppl
Object Detection application for PPL(Product Placement).

![Screenshot](https://github.com/whats-it/whatsit-dl-ppl/blob/master/screenshot1.png)

## Setup python environment
`conda env create -f environment.yml`

## Generating TFRecord files
```
# Train record
python create_tf_record.py \
    --label_map_path=gs://whatsit-dl-model/{projectId}/data/label_map.pbtxt \
    --data_dir=/dataset/VOCdevkit \
    --year=VOC2012 --set=train \ 
    --output_path=gs://whatsit-dl-model/{projectId}/data/train.record
    
# Evaluation record
python create_tf_record.py \
    --label_map_path=gs://whatsit-dl-model/{projectId}/data/label_map.pbtxt \
    --data_dir=/dataset/VOCdevkit \
    --year=VOC2012 --set=val \ 
    --output_path=gs://whatsit-dl-model/{projectId}/data/val.record
```

2. `python ppl.py` 
    Optional arguments (default value):
    * Device index of the camera `--source=0`
    * Width of the frames in the video stream `--width=480`
    * Height of the frames in the video stream `--height=360`
    * Number of workers `--num-workers=2`
    * Size of the queue `--queue-size=5`

## Tests
```
pytest -vs utils/
```

## Requirements
- [Anaconda / Python 3.5](https://www.continuum.io/downloads)
- [TensorFlow 1.3](https://www.tensorflow.org/)
- [OpenCV 3.0](http://opencv.org/)

## Notes
- OpenCV 3.1 might crash on OSX after a while, so that's why I had to switch to version 3.0. See open issue and solution [here](https://github.com/opencv/opencv/issues/5874).
- Moving the `.read()` part of the video stream in a multiple child processes did not work. However, it was possible to move it to a separate thread.

## Copyright

See [LICENSE](LICENSE) for details.
Copyright (c) 2017 [BlueHack Inc.](http://www.bluehack.net/).

