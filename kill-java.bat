
@rem process list, java process list
@rem tasklist
@rem jps -m

@rem kill JAVA_PROCESS_NAME process (shown by 'jps -m')
@rem for /f "tokens=1" %i in ('jps -m ^| find "JAVA_PROCESS_NAME"') do ( taskkill /F /PID %i )

@rem kill all java process
@rem for /f "tokens=1" %i in ('jps -m') do ( taskkill /F /PID %i )
taskkill /f /im java.exe
wmic process where "name like '%java%'" delete
