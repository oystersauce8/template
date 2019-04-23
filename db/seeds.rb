User.create(email: "example@example.net",  password: "password")
User.create(email: "example2@example.net", password: "password", token: "Bearer EXAMPLETOKEN")

Author.create(name: "Stephen King")
Author.create(name: "John Grisham") 

Book.create(published_at: DateTime.new, author_id: Author.first.id)
Book.create(published_at: DateTime.new, author_id: Author.last.id)
