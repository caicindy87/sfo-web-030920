Collaboration.destroy_all
Book.destroy_all      # most dependent    (it refers to an author)
Author.destroy_all    # least dependent   


#start with least dependent


harper = Author.create(name: "Harper Lee")
emily = Author.create(name: "Emily Bronte")

tkmb = Book.create(title: "To Kill A Mockingbird")
wh = Book.create(title: "Wethering Heights")

Collaboration.create(book_id: tkmb.id, author_id: harper.id)
Collaboration.create(book_id: wh.id, author_id: emily.id)
Collaboration.create(book_id: tkmb.id, author_id: emily.id)
Collaboration.create(book_id: wh.id, author_id: harper.id)
