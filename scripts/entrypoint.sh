#!/bin/bash
set -e  # Faz o script parar se qualquer comando falhar

echo "Iniciando o SQL Server..."
/opt/mssql/bin/sqlservr &

# Aguardar o SQL Server iniciar
echo "Aguardando o SQL Server iniciar..."
sleep 10

# Verifica se o SQL Server está respondendo antes de rodar scripts
for i in {1..30}; do
    if /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "YourStrong!Password" -Q "SELECT 1" &> /dev/null; then
        echo "SQL Server está pronto!"
        break
    fi
    echo "Aguardando o SQL Server..."
    sleep 2
done

# Rodar scripts SQL se houver arquivos na pasta /scripts
if [ -n "$(ls -A /scripts/*.sql 2>/dev/null)" ]; then
    echo "Executando scripts SQL..."
    for foo in /scripts/*.sql; do
        echo "Executando $foo..."
        /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "YourStrong!Password" -l 30 -e -i "$foo"
    done
else
    echo "Nenhum script SQL encontrado em /scripts."
fi

# Manter o contêiner rodando
echo "SQL Server iniciado. Mantendo o contêiner ativo..."
sleep infinity
