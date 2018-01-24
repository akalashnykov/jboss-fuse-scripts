set mydir=%~dp0

@powershell.exe -Command "& { Start-Process \"cmd\" -ArgumentList '/C' -verb RunAs}"
@rem
@rem powershell.exe -Command "Start-Process cmd -Verb RunAs"
