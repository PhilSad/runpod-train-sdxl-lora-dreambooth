# runpod-train-sdxl-lora-dreambooth

set HUGGING_FACE_HUB_TOKEN=<hf write token> and WANDB_API_KEY


# build and deploy

```
docker login -u ... -p ...
docker build . -t philsad/finetune-stable-diffusion
docker push philsad/finetune-stable-diffusion
```