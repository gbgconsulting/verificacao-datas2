@echo off
echo ========================================
echo    CONFIGURACAO GITHUB + RENDER
echo ========================================
echo.
echo Este script vai ajudar você a configurar
echo o GitHub e fazer o deploy no Render.
echo.

echo Passo 1: Criar repositório no GitHub
echo.
echo 1. Acesse: https://github.com
echo 2. Clique em "New repository"
echo 3. Nome: verificacao-datas
echo 4. Descrição: Aplicação web para verificação de datas
echo 5. Deixe como Public
echo 6. NÃO marque "Add README" ou ".gitignore"
echo 7. Clique em "Create repository"
echo.
echo Após criar, GitHub mostrará comandos.
echo Copie a URL do repositório (algo como):
echo https://github.com/SEU_USUARIO/verificacao-datas.git
echo.

set /p GITHUB_URL="Cole a URL do seu repositório aqui: "

echo.
echo Configurando repositório remoto...
git remote add origin %GITHUB_URL%

echo.
echo Fazendo upload do código...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo    UPLOAD CONCLUIDO!
echo ========================================
echo.
echo Agora siga o arquivo GITHUB_SETUP.md
echo para fazer o deploy no Render.
echo.
echo Ou acesse diretamente:
echo https://render.com
echo.
pause 