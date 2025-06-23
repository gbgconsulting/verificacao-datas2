@echo off
echo ========================================
echo    VERIFICACAO DE DATAS - ACESSO REMOTO
echo ========================================
echo.
echo Configurando acesso remoto...
echo.

REM Descobrir IP automaticamente
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4"') do (
    set IP=%%a
    goto :found_ip
)
:found_ip
set IP=%IP: =%

echo Seu IP local: %IP%
echo.
echo Para acessar de outros dispositivos na mesma rede:
echo http://%IP%:5000
echo.
echo Para acessar de qualquer lugar (recomendado):
echo 1. Faça deploy no Render (gratuito)
echo 2. Siga as instruções em DEPLOY.md
echo.
echo Pressione qualquer tecla para iniciar o servidor...
pause >nul

echo.
echo Iniciando servidor...
echo Pressione Ctrl+C para parar
echo.
python app.py 