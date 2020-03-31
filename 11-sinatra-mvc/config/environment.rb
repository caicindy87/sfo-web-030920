require 'bundler'
Bundler.require          # requires all gems in Gemfile.lock
require_all 'app'        # load everything in app folder

ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
})                       # connect ActiveRecord to the development.sqlite DB
