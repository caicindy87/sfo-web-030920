require 'json'
require 'pry'
require 'rest-client'


puts
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "} Welcome to the BookWorm CLI! {"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts 
puts "Enter a title or some keywords for books in which you're interested."


# War and Peace

# make a request
response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=war+and+peace") 

# parse the response
parsed = JSON.parse(response)

# "title", "authors", "publishedDate", all_books should be an array of hashes
all_books = parsed["items"].map do |book| 
  title = book['volumeInfo']['title']
  authors = book['volumeInfo']['authors']
  publishedDate =  book['volumeInfo']['publishedDate']
  {title: title, authors: authors, publishedDate: publishedDate} 
end
  
# save that info to your Database, (check for duplicates, updates)

all_books.each do |book|
    puts "##################################"
    puts "Title: #{book[:title]}"
    puts "Authors: #{book[:authors]}"
    puts "Published Date: #{book[:publishedDate]}"
    puts "##################################"
end

# In your project, here you would populate the database with API data, avoiding duplicates where necessary
binding.pry
puts "Book time!"
