@echo off
echo ********************************************************
echo *               适用于baiduwp-php的aria2               *
echo *                                                      *
echo *   Github https://github.com/yuantuo666/baiduwp-php   *
echo ********************************************************
echo TIPS: 1.可按下 Ctrl+C 退出 aria2
echo       2.已在本地启用RPC功能，进入适配的网站点击推送即可开始下载
echo       3.可进入网页管理aria2，请在设置中全部填写默认配置即可连接
title 适用于baiduwp-php的aria2 Made by Yuan_Tuo

if "%PROCESSOR_ARCHITECTURE%"=="x86" goto x86
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto x64

:enterversion
echo [ERROR] 无法判断当前操作系统，请手动输入选择：(32/64)
set /p version=
if /i %version% == 32 goto x86
if /i %version% == 64 goto x64
echo [ERROR] 输入错误，请重新输入。
goto enterversion
exit

:x64
start https://imwcr.cn/api/webui-aria2/
.\aria2c_64.exe --enable-rpc --rpc-listen-all
exit

:x86
start https://imwcr.cn/api/webui-aria2/
.\aria2c_32.exe --enable-rpc --rpc-listen-all
exit


