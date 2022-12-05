#!/usr/bin/env bash

BASEDIR="model_files"


cd $BASEDIR

git clone https://github.com/ultralytics/yolov5

pip install -r yolov5/requirements.txt