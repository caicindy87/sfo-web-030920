
#rake db:create_migration creates this file
class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :birth_year
    end
  end
end


#rake db:migrate does both of the below

# random.sql
# CREATE TABLE authors(
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   birth_year INTEGER
# )

# sqlite3 real_database.db < random.sql
