echo off
if not exist C:\Siemens md C:\Siemens
xcopy \\tcm-jt.fastgroup.cn\Siemens\test\jre-8u144-windows-x64.exe C:\Siemens /S /E /Y
echo Installing JRE
if not exist C:\\"Program Files"\\Java\jre1.8.0_161 start /wait C:\Siemens\jre-8u144-windows-x64.exe /s INSTALLDIR=C:\\"Program Files"\Java\jre1.8.0_161
xcopy \\tcm-jt.fastgroup.cn\Siemens\update\7z\*.* %userprofile%\ /S /E /Y
xcopy \\tcm-jt.fastgroup.cn\Siemens\正式环境安装\Tc4tier.7z C:\Siemens /S /E /Y
%userprofile%\7z x C:\Siemens\Tc4tier.7z -oC:\Siemens -aoa
xcopy \\tcm-jt.fastgroup.cn\Siemens\正式环境安装\工艺平台.lnk C:\Users\Public\Desktop\ /S /E /Y
echo Completed