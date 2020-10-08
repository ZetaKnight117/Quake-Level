@echo off

cd\
cd C:\QuakeDev\working


echo Copying Files...
copy C:\QuakeDev\id1\maps\zombielevel.map C:\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeDev\tools\ericw-tools\bin\qbsp.exe zombielevel

echo --------------VIS---------------
C:\QuakeDev\tools\ericw-tools\bin\vis.exe zombielevel

echo -------------LIGHT--------------
C:\QuakeDev\tools\ericw-tools\bin\light.exe zombielevel

copy zombielevel.bsp C:\QuakeDev\id1\maps
copy zombielevel.pts C:\QuakeDev\id1\maps
copy zombielevel.lit C:\QuakeDev\id1\maps
pause
cd\
cd C:\QuakeDev
quakespasm  +map zombielevel
