# Esta configuração refere-se a execução
# de um terminal em um s.o. Linux


# [passo-01] Instalar o postgresql em localhost

user@> sudo apt install postgresql

# [passo-02] Definir uma senha para a conta postgres
user@> su postgres

user@> postgres=# \password

user@>  [enter password]: pg01

user@>  [repeate]: pg01

user@> \q

user@> exit

# [passo-03] Implantar o banco da API

user@> psql -h localhost -U postgres -f pgsql.sql -d postgres

