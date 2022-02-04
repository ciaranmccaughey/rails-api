# README

## My steps for install:
## Rails
```
rails new rails-api -d postgresql
```
## React
```
npm i
```
To build react files:
```
yarn run build
```
The above command builds the react files and replaces the public folder.

Files of interest:
## Models
`/app/models/article.rb`
## Controllers
`/app/controllers/articles_controllers.rb`
## Views (Partials)
```
/app/articles/index.json.jbuilder
/app/articles/_article_item.json.jbuilder
```
## Mutations
```
/app/mutations/index.rb
/app/mutations/show.rb
```

## Testing
```
/spec/models/article_spec.rb
/spec/requests/article_spec.rb
/spec/routing/article_spec.rb
```