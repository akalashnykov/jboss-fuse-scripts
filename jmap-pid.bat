@rem Use jmap utility from the Java distribution to get shared object memory maps or heap memory details for a process. Process ID (pid) can be obtained using jps utility or your system specific process manager. 

jmap -dump:live,format=b,file=heap_%1%.bin %1%