@echo off
title Navigator Pro - Installation
color 0A

echo ========================================
echo    NAVIGATOR PRO - INSTALLATION
echo ========================================
echo.

REM Créer le dossier d'installation
mkdir "%USERPROFILE%\AppData\Local\NavigatorPro" 2>nul

REM Copier l'application
echo 📁 Copie de l'application...
copy "NavigatorPro.exe" "%USERPROFILE%\AppData\Local\NavigatorPro\" >nul

REM Créer un raccourci sur le bureau
echo 🔗 Création du raccourci...
powershell -Command "$WS = New-Object -ComObject WScript.Shell; $SC = $WS.CreateShortcut('%USERPROFILE%\Desktop\NavigatorPro.lnk'); $SC.TargetPath = '%USERPROFILE%\AppData\Local\NavigatorPro\NavigatorPro.exe'; $SC.Save()"

REM Ajouter au menu démarrer
echo 📌 Ajout au menu Démarrer...
copy "%USERPROFILE%\Desktop\NavigatorPro.lnk" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\" >nul

echo.
echo ========================================
echo    ✅ INSTALLATION TERMINÉE !
echo ========================================
echo.
echo 📍 L'application est disponible :
echo    - Sur votre bureau
echo    - Dans le menu Démarrer
echo.
pause