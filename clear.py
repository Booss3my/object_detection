import shutil 
import os 
PATH = os.getcwd()

def clear():
    print("removing data ...")
    shutil.rmtree(os.path.join(PATH,"data_files")) 
    print("removing model files ...")
    shutil.rmtree(os.path.join(PATH,"model_files/yolov5")) 


if __name__ == "__main__":
    clear()