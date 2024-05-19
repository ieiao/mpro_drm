# MPRO DRM

A simple DRM driver for VoCore MPRO screen.

# Usage for Raspberry Pi OS

We can install the MPRO DRM driver into the Raspberry Pi OS through the following command line operations.

```
git clone https://github.com/ieiao/mpro_drm.git
cd mpro_drm
git checkout -t origin/6.6.y-dma
make
sudo make install
```

After executing the above command, you can test whether the driver can be loaded properly by restarting or executing the `sudo modprobe mpro` command.

![](imgs/rpios.webp)
