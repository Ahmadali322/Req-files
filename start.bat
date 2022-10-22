@echo off
echo start chrome.exe https://drive.google.com/drive/u/0/mobile/folders/1WSypbTOnGKL5nmMb5cfuEZt2AhtnsbA5?usp=sharing https://drive.google.com/drive/u/0/mobile/folders/1AlVj5lddAu2JUh4nf83ShHNmMfWPZ12p?usp=sharing https://drive.google.com/drive/u/0/mobile/folders/1JFxzfJnBOESKFGrNIPX9LN3Pknf8gwP5?usp=sharing https://drive.google.com/drive/u/0/mobile/folders/1d5FenqON_Pz_TPGPCSvmhOQ9F3Giw5aJ?usp=sharing https://drive.google.com/drive/u/0/mobile/folders/1c531KBPhIBUrc9phf612tw3SHAmEoQuq?usp=sharing https://drive.google.com/drive/u/0/mobile/folders/18gDrYgNBui8mVFfFjNNamAJ1ejOwyHGO?usp=sharing https://driveuploader.com/upload/T4vfwZLbei/ > op.bat
start op.bat   
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By MG TECH SHOW" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user administrator TechTunnel.ga /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo  Successfully Installed !, If the RDP is Dead, Please Re Run Job Again! 
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Unable to get the NGROK tunnel, make sure the NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels"
echo Username: administrator
echo Password: TechTunnel.ga
echo .
echo  RDP Tech Tunnel
echo   Please Login to Your RDP !
echo Oh! and do make sure to follow us on Telegram for more cool Stuff at t.me/Tech_Tunnel
ping -n 10 127.0.0.1 >nul
