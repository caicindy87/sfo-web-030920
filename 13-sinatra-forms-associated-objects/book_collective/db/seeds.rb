# Book.destroy_all
Author.destroy_all

# Avoid duplicates ^^

a1 = Author.create!(name: 'Trisha Lacoste')
a2 = Author.create!(name: 'Martin Polo')
a3 = Author.create!(name: 'George Puma')

Book.create!(title: 'The Starless Sea', author_id: a1.id )
Book.create!(title: 'The Night Fire', author_id: a1.id)
Book.create!(title: 'The Institute', author_id: a2.id)
Book.create!(title: 'Stillness Is the Key', author_id: a2.id)
Book.create!(title: 'The Nickel Boys', author_id: a3.id)


