# setup model

bash ./model_files/yolov5_files/setup.sh


# get data


bash ./data/get_kaggle


# Tune files 
model_files/yolov5_files/hyperparameters.yaml
model_files/yolov5_files/dataset.yaml

# train model
python3 -m torch.distributed.run model_files/yolov5/train.py --hyp model_files/yolov5_files/hyperparameters.yaml --img-size 480 --batch 8 --epochs 20 --data model_files/yolov5_files/dataset.yaml

# predict 
python3 detect.py --source ./data_files/custom_dataset/images/test --img-size 480 --weights ./model_files/yolov5/runs/train/exp/weights/best.pt" --save-txt --nosave