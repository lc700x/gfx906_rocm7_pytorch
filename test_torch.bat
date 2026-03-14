@echo off
Python311\python.exe -c "import torch" 2>nul && echo Success || echo Failure
Python311\python.exe -c "import torch; print(f'device name [0]:', torch.cuda.get_device_name(0))"
Python311\python.exe -m torch.utils.collect_env
pause
exit /b 0 