# Api de login template

## Proposta do projeto:
A ideia do repositório é armazenar código de uma api básica com login e registro usando spring-security e OAuth2, basicamente evitando repetição de código sempre que começar um projeto que tenha como objetivo utilizar segurança com essas duas tecnologias.

## Como utilizar o template:
Em geral tudo está com o nome do template portanto é importante passar nas classes e mudar o nome para o projeto que está sendo feito.
- DataSource
- OpenApiConfiguration (Caso queira manter o Swagger)
- O nome do pacote principal  

Como posso ter esquecido de alguma é sempre bom passar em todas dando uma olhada.

## Docker
A aplicação utiliza de um banco MySQL que pode ser utilizado localmente ou pelo docker-compose do próprio projeto. O docker-compose foi criado para rodar o projeto no estado atual, existe a possibilidade  
de alterações realizadas no projeto quebrarem o mesmo.

Caso queira subir o projeto como um todo em Docker utilize o comando normal do compose  
```
docker-compose up --build -d
```

Caso queira subir apenas o banco utilize o mesmo compose porém adicione o nome do serviço que quer subir no fim (no caso "mysql")
```
docker-compose up --build -d mysql
```

É importante checar o application.properties em caso de erro de conexão com o banco. Provavelmente alterações na url disponível lá devem ser feitas dependendo da sua configuração de mysql.
