@echo off

cd build

:compile

cmake --build .
move .\Debug\DDNet-Server.exe C:\Users\Chiller\Desktop\teeworlds_clients\DDNet-11.1.4-test32_SERVER\

echo "press any key to recompile"
pause >NUL

goto compile