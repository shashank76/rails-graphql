# README

This README would normally document whatever steps are necessary to get the application up and running.

## To setup this application:

* Clone the application
```bash
git clone git@github.com:shashank76/rails-graphql.git
```

```bash
cd rails-graphql

bundle install
```

* Database creation and data seeding

```bash
rails db:create db:migrate db:seed
```

* run server and test graphQL apis

```bash
rails server
```

* After running the server open link in browser

```bash
http://localhost:3000/graphiql
```
* and run the below query in query prompt

- Query for list all blogs
```bash
{
  blogs{
    id
    title
    description
  	userName
    updatedAt
	}
}
```

- Query for get a specific blog

```bash
query getBlog($id: ID!){
  blog(id: $id){
    title
    description
    userName
    updatedAt
  }
}
```
and use below id structure in variables
```bash
{
  "id": 2
}
```
