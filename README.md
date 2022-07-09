# Desafio Backend Mobile2You

> Criar uma API de serviço do catálogo de filmes. Para isso será necessário criar dois endpoints, um que faça a leitura de um arquivo CSV e crie os registros no banco de dados. E um segundo que liste todos os filmes cadastrados em formato JSON.

## 💻 Instalação

Para instalar, siga os passos abaixo:

Clone esse repositório e instale suas dependências com os seguintes comandos:
```
git clone git@github.com:thiagohoaragao/mobile2you-backend-challenge.git
```
```
bundle install
```
```
yarn install
```

## ☕ Inicializando

Rode o seguinte comando para inicializar:
```
rails s
```
* Ele irá inicializar em localhost:3000

## 🔒 Testando
Rode o seguinte comando para realizar testes:
```
rails test
```
* Ele irá testar se os ids estão em formato de UUID (Identificador Único Universal).
## 🚀 Rotas

Pode ser passado: title, year, gender e country.
E para filtrar a quantidade de resultados: limit e offset.

```
localhost:3000/movies?title=
```
Também pode ser utilizado mais de um de uma vez, exemplo:

```
localhost:3000/movies?title=barbie&year=2015&limit=2&offset=0
```
Caso queira procurar por um especifico com um id:
```
localhost:3000/movies/id, exemplo : localhost:3000/movies/fff03d2a-7ff8-416d-9531-b1c9cc3bf401
```
## 🛠️ Essa API foi feita com:
- Ruby 3.0.3
- Rails 6.1.6
- SQLite3
