@jps -mlvV

@rem for /f "tokens=1" %i in ('jps -m ^| find "Main"') do ( taskkill /F /PID %i )

@for /f "tokens=1" %%i in ('jps -m ^| find "Main"') do ( powershell.exe start-process taskkill.exe -verb runas -argumentlist '/F /PID %%i')
@jps -mlvV