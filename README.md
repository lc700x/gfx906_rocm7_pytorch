# Windows ROCm7 PyTorch builds for AMD Radeon VII/MI50 GPUs (GFX906)
Windows ROCm7 PyTorch Wheels Built with [TheRock](https://github.com/ROCm/TheRock/blob/main/docs/development/windows_support.md) and [AMD Nightly Builds](https://rocm.nightlies.amd.com/v2-staging/gfx906/) for GFX906

## Installation  
### Put all 7 files in the gfx906 folder  
1. https://rocm.nightlies.amd.com/v2-staging/gfx906/rocm-7.13.0a20260312.tar.gz  
2. https://rocm.nightlies.amd.com/v2-staging/gfx906/rocm_sdk_libraries_gfx906-7.13.0a20260312-py3-none-win_amd64.whl  
3. https://rocm.nightlies.amd.com/v2-staging/gfx906/rocm_sdk_core-7.13.0a20260312-py3-none-win_amd64.whl  
4. https://rocm.nightlies.amd.com/v2-staging/gfx906/rocm_sdk_devel-7.13.0a20260312-py3-none-win_amd64.whl  
5. (downlaod from [release](https://github.com/lc700x/gfx906_windows_rocm7_pytorch/releases/latest))  
torch-2.9.1+rocm7.13.0a20260312-cp311-cp311-win_amd64.whl  
6. (downlaod from [release](https://github.com/lc700x/gfx906_windows_rocm7_pytorch/releases/latest))  
torchvision-0.24.0+rocm7.13.0a20260312-cp311-cp311-win_amd64.whl  
7. (downlaod from [release](https://github.com/lc700x/gfx906_windows_rocm7_pytorch/releases/latest))  
torchaudio-2.9.0+rocm7.13.0a20260312-cp311-cp311-win_amd64.whl  
### Install the packages  
```bash
# Python3.11 is required
pip install -r requirements-rocm7-gfx906.txt  
```
or double click the `install-rocm7_standalone_gfx906.bat` with standalone `Python311` environment (download from [release](https://github.com/lc700x/gfx906_windows_rocm7_pytorch/releases/latest)).  
