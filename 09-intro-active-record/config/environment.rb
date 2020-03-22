require 'bundler/setup'
Bundler.require # includes all of the gems from my gemfile in my environment

ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: "db/database.sqlite"
})

require_all 'app'
