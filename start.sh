#!/bin/bash

# Script para iniciar o Grid Trading Bot completo (backend e frontend)

echo "Iniciando Grid Trading Bot com Reinforcement Learning..."

# Verificar se o diretório de logs existe
mkdir -p BackendPython/logs

# Verificar se o diretório de modelos existe
mkdir -p BackendPython/models

# Iniciar o backend em segundo plano
echo "Iniciando o backend..."
cd BackendPython
python src/main.py &
BACKEND_PID=$!
cd ..

# Aguardar o backend iniciar
echo "Aguardando o backend iniciar..."
sleep 5

# Iniciar o frontend
echo "Iniciando o frontend..."
cd algo-grid-pilot
npm run dev &
FRONTEND_PID=$!
cd ..

echo "Grid Trading Bot iniciado!"
echo "Backend PID: $BACKEND_PID"
echo "Frontend PID: $FRONTEND_PID"
echo "Acesse o frontend em http://localhost:5173"

# Função para encerrar os processos ao sair
function cleanup {
    echo "Encerrando processos..."
    kill $BACKEND_PID
    kill $FRONTEND_PID
    echo "Processos encerrados."
}

# Registrar a função de limpeza para ser executada ao sair
trap cleanup SIGINT SIGTERM

# Manter o script em execução
echo "Pressione Ctrl+C para encerrar..."
wait