# OS_ETH Documentation

## Hardware Control Modes

### Full Control Mode
In this mode, the OS provides direct access to hardware ports via custom kernel modules and user-space interfaces.

- USB: Direct register access for custom protocols
- HDMI: Raw video signal control
- AUX: Audio signal manipulation
- Ethernet: Low-level packet control

### Regular Mode
Standard Linux drivers handle the ports normally.

## Switching Modes
Use sysctl or custom ioctl to switch modes at runtime.

## Real-time Features
- PREEMPT_RT kernel
- Minimal latency for hardware control

## Development Tools
- Bash: Default shell
- C/C++: GCC toolchain
- Python: Interpreted language
- VS Code: Code editor (install via package manager)
- Arduino IDE: For microcontroller development