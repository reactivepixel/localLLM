

notes 

- NVIDIA GPU is required
- NVIDIA Container Toolkit is required
- NVIDIA drivers are required
- NVIDIA Container Toolkit is required

On Omarchy (Arch-based), use this to get NVIDIA GPU working with Docker:
1. NVIDIA driver (if not already installed)
# For most GPUs (kernel modules from Arch repo)sudo pacman -S nvidia# If you need DKMS (e.g. custom kernel): nvidia-dkms
Reboot after installing the driver. Check with:
nvidia-smi
2. NVIDIA Container Toolkit
sudo pacman -S nvidia-container-toolkit
3. Configure Docker to use the NVIDIA runtime
sudo nvidia-ctk runtime configure --runtime=docker
4. Restart Docker
sudo systemctl restart docker
5