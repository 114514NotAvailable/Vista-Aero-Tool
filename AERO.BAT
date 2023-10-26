@Echo Off
COLOR 2F
reg add "HKCU\Software\Microsoft\Windows\DWM" /v Composition /t reg_dword /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v CompositionPolicy /t reg_dword /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v UseMachineCheck /t reg_dword /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v Blur /t reg_dword /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v Animations /t reg_dword /d 0 /f
net stop uxsms
start mshta vbscript:msgbox("Please select 'Adjuct for best appearance' and click 'OK'. ",48,"Guide: ")(window.close)
SystemPropertiesPerformance
net start uxsms