# Jetson Nano Setup





## Jetpack Version check

```
cat /etc/nv_tegra_release
```



## Install PyTorch

- Here is the most precise instruction by NVIDIA.
  [NVIDIA Developer Forum](https://forums.developer.nvidia.com/t/pytorch-for-jetson-version-1-9-0-now-available/72048/3)









- libopenblas-dev 설치 안되는 경우

  ```
  sudo apt-get clean
  sudo apt-get autoclean
  sudo rm -rf /var/lib/apt/lists/
  sudo apt update
  ```

  



### Torch2trt

 ```
 git clone https://github.com/NVIDIA-AI-IOT/torch2trt
 cd torch2trt
 sudo python3 setup.py install
 ```



## Links

https://forums.developer.nvidia.com/t/pytorch-for-jetson-version-1-9-0-now-available/72048/3

https://gilberttanner.com/blog/run-pytorch-models-on-the-jetson-nano-with-tensorrt
