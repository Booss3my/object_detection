#!/usr/bin/env bash
pip install -q kaggle

DATA_PATH="./data_files"
mkdir -p $DATA_PATH 

#chmod 600 /home/booss3my/.kaggle/kaggle.json
#cd /home/booss3my/Python/object_detection

if [ $# = 0 ]
then
    echo "Input the name of the datasets user/dataset "
else
    for var in "$@"
        do  
            kaggle datasets download $var -p $DATA_PATH --unzip
            
        done
fi