call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64

set DFHACKDIR="C:\Users\vit\Desktop\buildagent\workspace\root\dfhack\0.44"
set DFHACKVER=0.44.04-alpha1
set DFVERNUM=04404
set TWBT_VER=6.xx

msbuild /p:Platform=x64 /p:Configuration=Release /p:dfhack=%DFHACKDIR% /p:dfhackver=%DFHACKVER% /p:twbt_ver=%TWBT_VER% /p:dfvernum=%DFVERNUM% twbt.vcxproj

rem cd plugins
rem msbuild /p:Platform=Win32 /p:Configuration=Release /p:dfhack=%DFHACKDIR% /p:dfhackver=%DFHACKVER% /p:twbt_ver=%TWBT_VER% /p:dfvernum=%DFVERNUM% /p:plugin=mousequery plugins.vcxproj

rem cd ..
