# APIs, or "Hashes + the Internet"

## Web-based APIs

## Goals 🦁

- [ ] Talk about how the Internet works 🧭
- [ ] Practice using an API 🧱
- [ ] Build a CLI 📮

## How the Internet Works 🧭

- The request-response lifecycle
  - Request from client to server
  - Response from server to client

  - client (user computer)
  - server (company's computer)
  - request
  - response


- The client and the request
  - HTTP Verbs (CRUD?)

  Create - POST
  Read - GET
  Update - PUT (completely replace), PATCH (partial update)
  Delete - DELETE (delete a resource)

  - Request Header (additional info about a req / res)




- The server and the response
  - Headers
  - Body 


- Response types
  - HTML (.html) - when we navigate to wikipedia.org
  - JSON (.json) - standardized in 2013

  - JavaScript Object Notation
  - "{"cats":\"["Maru", "Johnny", "Larabelle"]\"}"

## APIs 🧱

- Application Programming Interface (API)
  - Web-based or not web-based, tools or data
  - NLP, language translation, mood detection
  - Google Maps, Open Street Maps(open source, free)

` - get restaurant data, public health data, law enforcement data,
    song data. 

  - A general connectivity interface to an application (e.g. a butler)
  - A standardized means of interaction
- "RESTful" API
  - REpresentational State Transfer
  - HTTP requests GET, PUT, POST, and DELETE data in accordance with resource paths
  - GET "/people" - gets all people
  - GET "/people/1" - gets person with id of 1




- The uses of an API in the Internet
  - Easy, up-to-date access to information
  - Connecting data LEGOs
- The difference between using an API and scraping
  - API: information is organized and packaged for sharing
  - Scraping: disorganized, you have to parse manually, may change over time
- Making requests to an API and parse the JSON, examining the result
- Writing a command line application (CLI). Examples:
  - Built a CLI hangman game
  - Built an app that let's you know if you have the groceries for a recipe in your refrigerator
  - Created a bot that connected to the command line & slack

## Building a CLI 📮

START: `Building out this HTTP request + CLI in app/lib/run.rb`

- [ ] Use the `rest-client` gem to make a request to the [Google Books API])(https://developers.google.com/books/docs/v1/using#WorkingVolumes) with a given query
  - `RestClient.get`
  - `JSON.parse`
- [ ] Parse the response to find the title, author, and description of each book
  - Identify valuable key
  - Map array
- [ ] Convert the hard-coded query into an interactive CLI query
  - `gets#chomp`
  - Plug into query


## Takeaways 🐋

- The Internet is the ebb and flow of requests and and requests between clients and servers.
- APIs serve as an interface between two different software programs.
- A CLI is a text-based interface for a program.

## Resources 💎

1. [`rest-client` gem](https://github.com/rest-client/rest-client#usage-raw-url)
2. [Google Books API docs](https://developers.google.com/books/docs/v1/using#WorkingVolumes)
3. [`json` gem](https://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html#method-i-parse)
4. [RESTful API Endpoints](https://guides.rubyonrails.org/routing.html#crud-verbs-and-actions)
5. [Postman](https://www.getpostman.com/)
