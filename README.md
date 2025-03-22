# Desafio de Arquitetura de Software - FIAP

Este projeto foi desenvolvido como parte do desafio da pós-graduação em Arquitetura de Software na FIAP. O objetivo foi criar um microsserviço para o cadastro de contatos utilizando tecnologias modernas e boas práticas de desenvolvimento.

## Tecnologias Utilizadas
- **.NET 8**
- **SQL Server**
- **Docker**
- **Grafana**
- **Prometheus**
- **MassTransit com RabbitMQ** (Mensageria)
- **Kong** (API Gateway)
- **Azure Function**

## Arquitetura
O projeto foi estruturado em microsserviços independentes, conforme detalhado abaixo:

### Microsserviços
1. **Consulta de contatos** → Implementado como uma **Azure Function**.
2. **Producer** → Responsável por expor rotas para **cadastrar, atualizar e remover contatos**.
3. **Consumer de Cadastro** → Processa mensagens da fila para **cadastrar contatos**.
4. **Consumer de Atualização** → Processa mensagens da fila para **atualizar contatos**.
5. **Consumer de Remoção** → Processa mensagens da fila para **remover contatos**.

## Configuração do Ambiente
Todo o ambiente foi configurado utilizando **Docker Compose**, incluindo os seguintes serviços:
- **SQL Server**: Configurado com um **script de inicialização** que executa um `CREATE DATABASE` e cria tabelas caso o banco ainda não exista.
- **RabbitMQ**: Utilizado para comunicação assíncrona entre os microsserviços.
- **Grafana e Prometheus**: Configurados para monitoramento do sistema.
- **Node Exporter**: Adicionado para monitorar o uso da máquina.

## Pacote NuGet
Para facilitar a reutilização de código e padronizar a infraestrutura, foi criado um **pacote NuGet** contendo a implementação da infraestrutura de banco de dados e das mensagens de mensageria. O pacote foi publicado no **GitHub Packages**.

## Repositórios
- **Consulta de Contatos:** [Link do repositório](https://github.com/ErickGoldberg/TCFiapConsultContactsFunction)
- **Producer:** [Link do repositório](https://github.com/Mauro-Benitez/TechChallengeFiapMicrosserviceProducerCreateContact)
- **Consumer de Cadastro:** [Link do repositório](https://github.com/caiofabiogomes/TechChallengeFiapMicrosserviceConsumerCreateContact)
- **Consumer de Atualização:** [Link do repositório](https://github.com/ffvieira/TechChallengeFiapMicrosserviceConsumerUpdateContact)
- **Consumer de Remoção:** [Link do repositório](https://github.com/ErickGoldberg/TechChallengeFiapMicrosserviceConsumerDeleteContact)

## Como Executar
1. Clone os repositórios.
2. Certifique-se de ter o **Docker e Docker Compose** instalados.
3. Navegue até o diretório do projeto e execute:
   ```sh
   docker-compose up -d
   ```
4. Acesse os serviços conforme necessário.

## Monitoramento
Após subir os serviços, é possível visualizar os dashboards de monitoramento no **Grafana**, acessando:
- **Prometheus Metrics**: `http://localhost:9090`
- **Grafana Dashboard**: `http://localhost:3000`

## Rotas
 
- **Cadastrar contato, Excluir, Atualizar**: `http://localhost:8000/Contacts`
- **Consultar contato**: `http://localhost:8000/GetContactsFunction`

## Colaboradores
Agradecemos a todos que contribuíram para o desenvolvimento deste projeto:
- [@caiofabiogomes](https://github.com/caiofabiogomes)
- [@ErickGoldberg](https://github.com/ErickGoldberg)
- [@mauro_benitez](https://github.com/mauro_benitez)
- [@ffvieira](https://github.com/ffvieira)



---
Projeto desenvolvido como parte da **pós-graduação em Arquitetura de Software** na FIAP.

