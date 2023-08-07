FROM runpod/pytorch:2.0.1-py3.10-cuda11.8.0-devel

RUN cd /workspace && \
    git clone https://github.com/huggingface/diffusers.git && \
    cd diffusers && \
    pip install -e . && \
    cd examples/dreambooth && \
    pip install -r requirements_sdxl.txt && \
    cd ../../.. && \
    git clone -b sdxl https://github.com/kohya-ss/sd-scripts.git && \
    cd sd-scripts && \
    pip install -r requirements.txt && \
    cd .. && \
    pip install xformers wandb && \
    git clone https://github.com/comfyanonymous/ComfyUI && \
    cd ComfyUI  && \
    pip install -r requirements.txt && \
    cd .. && \
    git clone https://github.com/PhilSad/runpod-train-sdxl-lora-dreambooth.git

CMD ["/start.sh"]
