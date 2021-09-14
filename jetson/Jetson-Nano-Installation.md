# Jetson Nano Setup





## Jetpack Version check

```
cat /etc/nv_tegra_release
```





# ## Trouble Shooting



- libopenblas-dev 설치 안되는 경우

  ```
  sudo apt-get clean
  sudo apt-get autoclean
  sudo rm -rf /var/lib/apt/lists/
  sudo apt update
  ```

