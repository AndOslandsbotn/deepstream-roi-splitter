## Setting up deepstream in docker container in WSL 2
See guide: https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_on_WSL2.html

## Testing the environment
Navigate to:
```bash
/opt/nvidia/deepstream/deepstream/samples/configs/de
epstream-app $ 
```

These files can be modified. E.g. change the sink2 so that it exposes rtsp stream. Turn of sink0 and 1.

Then from inside this folder run
```bash
deepstream-app -c source30_1080p_dec_infer-resnet_tiled_display.txt
```

You can watch the stream using ffplay

```bash
ffplay rtsp://localhost:8554/ds-test
```