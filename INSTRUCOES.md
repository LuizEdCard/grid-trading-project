# Instruu00e7u00f5es para o Grid Trading Bot com RL

## Visu00e3o Geral

Este projeto consiste em dois componentes principais:

1. **BackendPython**: O backend em Python que implementa a lu00f3gica de grid trading e o agente de Reinforcement Learning (RL).
2. **algo-grid-pilot**: O frontend em React/TypeScript que fornece uma interface para configurar e monitorar o bot.

## Requisitos

- Python 3.8 ou superior
- Node.js 16 ou superior
- Conta na Binance (opcional para modo de produu00e7u00e3o)

## Instalau00e7u00e3o

### Backend

1. Navegue atu00e9 a pasta do backend:
   ```
   cd BackendPython
   ```

2. Instale as dependu00eancias:
   ```
   pip install -r requirements.txt
   ```

3. Configure as variu00e1veis de ambiente:
   - Crie um arquivo `.env` na pasta `config` com suas chaves de API da Binance (se estiver usando o modo de produu00e7u00e3o):
     ```
     BINANCE_API_KEY=sua_chave_api
     BINANCE_API_SECRET=seu_segredo_api
     ```

4. Verifique o arquivo de configurau00e7u00e3o:
   - Revise o arquivo `config/config.yaml` e ajuste os paru00e2metros conforme necessu00e1rio.

### Frontend

1. Navegue atu00e9 a pasta do frontend:
   ```
   cd algo-grid-pilot
   ```

2. Instale as dependu00eancias:
   ```
   npm install
   ```

## Execuu00e7u00e3o

### Backend

1. Inicie o backend:
   ```
   cd BackendPython
   ./start_bot.sh
   ```

   Ou manualmente:
   ```
   python src/main.py
   ```

2. O servidor API seru00e1 iniciado na porta 5000.

### Frontend

1. Inicie o frontend em modo de desenvolvimento:
   ```
   cd algo-grid-pilot
   npm run dev
   ```

2. Acesse o frontend em `http://localhost:5173`.

## Uso

1. No frontend, selecione um par de trading (ex: BTCUSDT).
2. Configure os paru00e2metros da grade (nu00famero de nu00edveis, espau00e7amento, etc.).
3. Inicie o trading clicando em "Start Trading".
4. Monitore o desempenho e ajuste os paru00e2metros conforme necessu00e1rio.

## Modos de Operau00e7u00e3o

- **Shadow Mode**: Simula ordens sem realmente executu00e1-las. u00d3timo para testes.
- **Production Mode**: Executa ordens reais na Binance. Requer chaves de API vu00e1lidas.

## Reinforcement Learning

O sistema inclui um agente de RL que aprende a otimizar os paru00e2metros da grade com base nas condiu00e7u00f5es de mercado. O agente u00e9 treinado automaticamente apu00f3s um nu00famero configuru00e1vel de trades.

Para mais detalhes sobre a implementau00e7u00e3o de RL, consulte o arquivo `BackendPython/README_RL.md`.

## Soluu00e7u00e3o de Problemas

- **Erro de conexu00e3o com a API da Binance**: Verifique suas chaves de API e certifique-se de que elas tu00eam as permissu00f5es corretas.
- **Erro ao iniciar o backend**: Verifique se todas as dependu00eancias estu00e3o instaladas corretamente.
- **Frontend nu00e3o consegue se conectar ao backend**: Certifique-se de que o backend estu00e1 em execuu00e7u00e3o e acessu00edvel.

## Avisos

- **Risco de Trading**: O trading de criptomoedas envolve riscos significativos. Use este bot por sua conta e risco.
- **Modo de Produu00e7u00e3o**: Teste extensivamente em modo Shadow antes de usar o modo Production.
- **Seguranu00e7a das Chaves de API**: Nunca compartilhe suas chaves de API e certifique-se de que elas tu00eam apenas as permissu00f5es necessu00e1rias.