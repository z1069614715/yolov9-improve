env:
    python: 3.8.16
    torch: 1.13.1+cu117
    torchvision: 0.14.1+cu117
    timm: 0.9.8
    mmcv: 2.1.0
    mmengine: 0.9.0

python models/yolo.py --cfg models/detect/yolov9-c.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-mobilenetv4.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-repvit.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-starnet.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-DRepNCSPELAN4.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-DCNV3RepNCSPELAN4.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-fasternet.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-PRepNCSPELAN.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-FasterRepNCSPELAN.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-CoordConv.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-DySnakeRepNCSPELAN.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-KANRepNCSPELAN4.yaml --profile

python train_dual.py --cfg models/detect/yolov9-c-DCNV3RepNCSPELAN4.yaml \
    --data /home/hjj/Desktop/dataset/dataset_visdrone/data_exp.yaml --batch-size 8 