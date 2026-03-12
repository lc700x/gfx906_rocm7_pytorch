@echo off
echo --- ROCm7 PyTorch Installer (With ROCm7 for AMD MI50/Radeon VII GPUs.) ---

REM --- Get AMD GPUs sorted by AdapterRAM (largest first) ---
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Where-Object Name -like '*AMD*' | Sort-Object AdapterRAM -Descending | ForEach-Object { $_.Name }"`) do (
    set "FULL_GPU_NAME=%%i"
    goto :ProcessGPU
)


echo ERROR: No AMD GPU detected.
pause
exit /b 1

:ProcessGPU
echo Detected GPU: %FULL_GPU_NAME%


:InstallDependencies
echo - Setting up the virtual environment
REM Set paths
Set "PYTHON_EXE=.\Python311\python.exe"

echo.
echo - Updating pip package
%PYTHON_EXE% -m pip install --upgrade pip --no-cache-dir --no-warn-script-location -i https://repo.huaweicloud.com/repository/pypi/simple/ --trusted-host https://repo.huaweicloud.com/
if %errorlevel% neq 0 (
  echo Failed to update pip
  pause
  exit /b 1
)
%PYTHON_EXE% -m pip install -r requirements-rocm7-gfx906.txt --no-cache-dir --no-warn-script-location -i https://repo.huaweicloud.com/repository/pypi/simple/ --trusted-host https://repo.huaweicloud.com/
@REM You can enable the following for your own python environment
@REM %PYTHON_EXE% -m pip install -r requirements.txt --no-cache-dir --no-warn-script-location -i https://repo.huaweicloud.com/repository/pypi/simple/ --trusted-host https://repo.huaweicloud.com/
%PYTHON_EXE% -m pip install "triton-windows<3.7" --no-cache-dir --no-warn-script-location -i https://repo.huaweicloud.com/repository/pypi/simple/ --trusted-host https://repo.huaweicloud.com/
if %errorlevel% neq 0 (
    echo Failed to install requirements
    pause
    exit /b 1
)

echo Python environment deployed successfully.
pause
exit /b 0
