# Rubocop::Vnda

Essa é uma gem criada para a padronização de código nos projetos de Vnda

## Instalação

Basta colocar a gem no Gemfile do seu projeto (sempre especificando a versão):

```ruby
gem 'rubocop-vnda', 'X.Y.Z'
```

And then execute:

    $ bundle install
    $ bundle binstub rubocop

## Uso

Depois de instalado, crie (ou remove caso já exista) o arquivo `.rubocop.yml` com o seguinte conteúdo

```yaml
inherit_gem:
  rubocop-vnda: default.yml
```

## Contribuindo

Para configurar novas regras ou alterar regras atuais, basta modificar o arquivo `default.yml` na raiz desse repositório em um branch específico e abrir um pull request
