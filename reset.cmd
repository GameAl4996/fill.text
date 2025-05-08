@echo off
echo Le PC va être réinitialisé automatiquement au prochain démarrage...
timeout /t 5 /nobreak

:: Ajoute la commande au registre Windows pour l'exécuter au redémarrage
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v ResetPC /t REG_SZ /d "systemreset -factoryreset" /f

echo La réinitialisation sera lancée après le prochain redémarrage.
pause
shutdown /r /t 10
