# migrations-atlas-gorm

Nesse repositório tem um exemplo básico de como fazer modelagem do banco utilizando o gorm e o versionamento com migrations, utilizando o [atlas](https://atlasgo.io/guides/orms/gorm/getting-started)

## Comando para gerar migrations

``` atlas migrate diff --env gorm ```

## Comando para fazer o apply

``` atlas migrate apply --dir file://migrations  --url "postgres://user:password@localhost:5434/database?sslmode=disable" ```

[Apply migrations](https://atlasgo.io/versioned/apply)

## Comando para fazer o down 

``` atlas migrate down --dir file://migrations  --url "postgres://user:password@localhost:5434/database?sslmode=disable" --dev-url "docker://postgres/16/dev" ```

[Down migrations](https://atlasgo.io/versioned/down)


## Controle de versão no banco

O Atlas salva informações sobre as migrações aplicadas em uma tabela chamada atlas_schema_revisionsno esquema do banco de dados conectado

![alt text](image.png)