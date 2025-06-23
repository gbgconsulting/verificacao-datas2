# 🚀 Guia Completo: GitHub + Render

## Passo 1: Criar Repositório no GitHub

### 1.1 Acesse o GitHub
- Vá para: https://github.com
- Faça login ou crie uma conta

### 1.2 Criar Novo Repositório
- Clique em "New repository" (botão verde)
- Configure:
  - **Repository name**: `verificacao-datas`
  - **Description**: `Aplicação web para verificação de datas em planilhas Excel`
  - **Visibility**: Public (gratuito)
  - **NÃO** marque "Add a README file" (já temos um)
  - **NÃO** marque "Add .gitignore" (já temos um)

### 1.3 Clique em "Create repository"

## Passo 2: Conectar Repositório Local ao GitHub

### 2.1 Copiar URL do Repositório
Após criar o repositório, GitHub mostrará comandos. Copie a URL:
```
https://github.com/SEU_USUARIO/verificacao-datas.git
```

### 2.2 Executar Comandos no PowerShell
```bash
# Adicionar repositório remoto
git remote add origin https://github.com/SEU_USUARIO/verificacao-datas.git

# Fazer upload do código
git branch -M main
git push -u origin main
```

## Passo 3: Deploy no Render

### 3.1 Acessar Render
- Vá para: https://render.com
- Faça login com sua conta GitHub

### 3.2 Criar Web Service
- Clique em "New Web Service"
- Selecione seu repositório `verificacao-datas`

### 3.3 Configurar
- **Name**: `verificacao-datas`
- **Environment**: `Python`
- **Build Command**: `pip install -r requirements.txt`
- **Start Command**: `gunicorn app:app`
- **Plan**: Free

### 3.4 Clicar em "Create Web Service"

## Passo 4: Acessar Aplicação

### 4.1 Aguardar Deploy
- Render começará a fazer deploy automaticamente
- Aguarde até aparecer "Live" (verde)

### 4.2 Acessar URL
- Render fornecerá uma URL como:
  `https://verificacao-datas.onrender.com`
- Clique na URL para acessar sua aplicação!

## 🔧 Comandos Rápidos

### Se precisar atualizar o código:
```bash
git add .
git commit -m "Atualização da aplicação"
git push
```

### Render fará deploy automático após cada push!

## 📱 Acesso Mobile

A aplicação funcionará em:
- 📱 Smartphones
- 📱 Tablets  
- 💻 Computadores
- 🌐 Qualquer navegador

## ⚠️ Solução de Problemas

### Erro "Repository is empty":
- ✅ Execute os comandos do Passo 2
- ✅ Verifique se o push foi feito com sucesso

### Erro no deploy:
- ✅ Verifique se `requirements.txt` está correto
- ✅ Verifique se `render.yaml` está presente
- ✅ Verifique os logs no Render

### Aplicação não carrega:
- ✅ Aguarde o deploy completar
- ✅ Verifique se a URL está correta
- ✅ Verifique os logs de erro

## 🎉 Pronto!

Sua aplicação estará disponível 24/7 em:
`https://verificacao-datas.onrender.com` 