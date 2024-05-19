env:
    python: 3.8.16
    torch: 1.13.1+cu117
    torchvision: 0.14.1+cu117
    timm: 0.9.8
    mmcv: 2.1.0
    mmengine: 0.9.0

python models/yolo.py --cfg models/detect/yolov9-c-mobilenetv4.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-repvit.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-starnet.yaml --profile
python models/yolo.py --cfg models/detect/yolov9-c-DRepNCSPELAN4.yaml --profile