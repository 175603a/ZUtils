@echo off
echo ********************************************************
echo *               ������baiduwp-php��aria2               *
echo *                                                      *
echo *   Github https://github.com/yuantuo666/baiduwp-php   *
echo ********************************************************
echo TIPS: 1.�ɰ��� Ctrl+C �˳� aria2
echo       2.���ڱ�������RPC���ܣ������������վ������ͼ��ɿ�ʼ����
echo       3.�ɽ�����ҳ����aria2������������ȫ����дĬ�����ü�������
title ������baiduwp-php��aria2 Made by Yuan_Tuo

if "%PROCESSOR_ARCHITECTURE%"=="x86" goto x86
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto x64

:enterversion
echo [ERROR] �޷��жϵ�ǰ����ϵͳ�����ֶ�����ѡ��(32/64)
set /p version=
if /i %version% == 32 goto x86
if /i %version% == 64 goto x64
echo [ERROR] ����������������롣
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


