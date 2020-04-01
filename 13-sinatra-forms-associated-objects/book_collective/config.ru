require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# use Rack::MethodOverride #to use any method besides GET / POST

use BooksController
use AuthorsController
run ApplicationController

