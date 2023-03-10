FROM anibali/pytorch:1.13.0-cuda11.8-ubuntu22.04

# Set up time zone.
ENV TZ=CEST
RUN sudo ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

# Install system libraries required
RUN sudo apt-get update \
 && sudo apt-get install -y git \
 && sudo rm -rf /var/lib/apt/lists/*

COPY pytorch_test.py pytorch_test.py

CMD [ "python", "pytorch_test.py"]
