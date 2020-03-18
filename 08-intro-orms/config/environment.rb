require 'bundler'
Bundler.require


# Creates a connection between this Ruby program &&
# the 'test.db' databse
DB = {
  conn: SQLite3::Database.new('db/test.db')
}

# By default, returned values are multi-level arrays. 
# To make the database query results easier to work with,
# we'll instead return the results as hashes.


DB[:conn].results_as_hash = true

require_relative '../lib/tweet.rb'
