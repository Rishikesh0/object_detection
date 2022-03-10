# Dockerfile, Image, Container

FROM python:3.8

ADD main.py .

RUN pip install numpy opencv-python 
RUN pip install torch 
RUN pip install torchvision
RUN pip install torchaudio
RUN git clone https://github.com/ultralytics/yolov5
RUN cd yolov5 && pip install -r requirements.txt


CMD [ "python", "./main.py" ]