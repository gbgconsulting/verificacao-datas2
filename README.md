# 🔍 Verificação de Datas em Planilha Excel

Esta aplicação web permite comparar datas da coluna F de uma planilha Excel com uma lista de datas específicas e gerar um relatório detalhado de ocorrências.

## 📋 Funcionalidades

- Upload de planilha Excel (.xlsx, .xlsm, .xls)
- Upload de arquivo "lista de datas.txt" com datas para monitorar
- Seleção da coluna a ser verificada (padrão: F)
- Escolha da cor de destaque
- Geração de relatório detalhado de ocorrências
- Download automático do relatório

## 🚀 Como usar

### 1. Instalar dependências
```bash
pip install -r requirements.txt
```

### 2. Executar a aplicação
```bash
python app.py
```

### 3. Acessar no navegador
Abra o navegador e acesse: `http://localhost:5000`

### 4. Preparar os arquivos

#### Planilha Excel:
- Deve conter datas na coluna F (ou coluna selecionada)
- As datas devem estar no formato padrão do Excel
- A primeira linha é considerada cabeçalho

#### Arquivo "lista de datas.txt":
- Arquivo de texto (.txt)
- Uma data por linha
- Formato: DD/MM/AAAA
- Exemplo:
```
15/12/2023
20/12/2023
25/12/2023
01/01/2024
05/01/2024
10/01/2024
```

### 5. Processar
1. Faça upload da planilha Excel
2. Faça upload do arquivo "lista de datas.txt"
3. Selecione a coluna a ser verificada (padrão: F)
4. Escolha a cor de destaque
5. Clique em "Gerar Relatório de Ocorrências"
6. O relatório será baixado automaticamente

## 📊 Relatório Gerado

O relatório `relatorio_ocorrencias.xlsx` contém:

- **Linha**: Número da linha onde a data foi encontrada
- **Data Encontrada**: Data no formato DD/MM/AAAA
- **Valor da Célula**: Valor original da célula
- **Coluna**: Coluna onde a data foi encontrada
- **Status**: Status da ocorrência (ENCONTRADA)
- **Resumo**: Total de ocorrências e datas monitoradas

## 📁 Estrutura do projeto

```
PROJETO_VERIFICAÇÃO2/
├── app.py                    # Aplicação Flask principal
├── templates/
│   └── index.html           # Interface web
├── uploads/                 # Pasta para arquivos temporários
├── lista de datas.txt       # Arquivo de exemplo com datas
├── requirements.txt         # Dependências Python
└── README.md               # Este arquivo
```

## ⚠️ Observações

- A aplicação procura por datas na coluna selecionada a partir da linha 2
- A primeira linha é considerada cabeçalho
- Apenas células com formato de data são verificadas
- O relatório é gerado apenas se houver ocorrências encontradas
- O arquivo de saída será salvo como 'relatorio_ocorrencias.xlsx' 