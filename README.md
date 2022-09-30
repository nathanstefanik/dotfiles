# dotfiles
Collection of configuration files for my machines

## slstatus
* on linux operating systems, the enumerated hwmon symlinks located in /sys/class/hwmon/ might vary in order.
The kernel modules do not load in a consistent order per boot. I created a udev rule that ensures /dev/gpu_temp always points to the correct temperature file.
```sudo cp ~/.config/scripts/gpu-temp-stable-path.rules /etc/udev/rules.d/```
