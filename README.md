# OS_ETH - Custom Linux OS for x86 with Full Hardware Control

This project builds a custom real-time Linux operating system for x86 platforms, providing full control over USB, HDMI, AUX, and Ethernet ports, along with regular operational modes.

## Features
- Linux kernel with PREEMPT_RT for real-time capabilities
- Minimal system with optional full-screen mode
- Custom drivers for hardware control
- Development tools: Bash, C/C++, Python, VS Code, Arduino IDE
- Modes: Full control mode vs. standard usage mode

## Prerequisites
- Ubuntu or compatible Linux host (for building)
- Yocto Project dependencies installed

## Setup
1. Clone Yocto Poky:
   ```bash
   cd sources
   git clone git://git.yoctoproject.org/poky
   cd poky
   git checkout <latest-stable-branch>
   ```

2. Initialize build environment:
   ```bash
   cd ../../build
   source ../sources/poky/oe-init-build-env
   ```

3. Add custom layer:
   Edit conf/bblayers.conf to include meta-os_eth

4. Configure for x86 RT:
   Edit conf/local.conf for MACHINE = "genericx86-64" and RT kernel

## Building
```bash
bitbake core-image-minimal
```

## Custom Drivers
- USB: Custom module in meta-os_eth/recipes-kernel/linux/linux-yocto/
- HDMI/AUX: Video/audio control modules
- Ethernet: Network interface control

## Modes
- Full Control Mode: Direct hardware access via custom ioctl
- Regular Mode: Standard Linux drivers

## Development
Use VS Code in the workspace for editing kernel modules and recipes.