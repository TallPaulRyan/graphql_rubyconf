# README

Simple RoR/GraphQL review from this resource: https://www.youtube.com/watch?v=COmNrys1Khc


#### Example Queries & Mutations
```
query {
  authors {
    id
    name
    email
    bookCount
    books {
      name
      description
      chapters {
        name
        authorName
      }
    }
  }
}
```

```
query {
  author(id: 2) {
    id
    name
    email
    bookCount
    books {
      name
      description
      chapters {
        name
        authorName
      }
    }
  }
}
```

```
mutation {
  createAuthor( 
    input: {
    	name: "Tall Paul"
			email: "tallpaul@email.com"
    }) {
    author {
      name
      id
    } errors
  }
}
```
