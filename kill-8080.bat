FOR /F "tokens=5 delims= " %%P IN ('netstat -a -n -o ^| findstr :8080') DO powershell.exe start-process taskkill.exe -verb runas -argumentlist '/F /PID %%P'
