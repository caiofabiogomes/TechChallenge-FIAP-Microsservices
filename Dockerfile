FROM mcr.microsoft.com/mssql/server:2022-latest

USER root

# Variáveis para aceitar EULA
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD="YourStrong!Password"
ENV MSSQL_PID=Express
ENV PATH="$PATH:/opt/mssql-tools/bin"

# Atualizar pacotes e instalar mssql-tools e unixodbc-dev
RUN apt-get update && apt-get install -y mssql-tools unixodbc-dev

# Copiar o script de entrada para dentro do contêiner
COPY ./scripts/entrypoint.sh /scripts/entrypoint.sh
RUN chmod +x /scripts/entrypoint.sh

# Definir o entrypoint
ENTRYPOINT [ "/bin/bash", "/scripts/entrypoint.sh" ]
