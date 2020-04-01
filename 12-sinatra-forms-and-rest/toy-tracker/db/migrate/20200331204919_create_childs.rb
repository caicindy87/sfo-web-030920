class CreateChilds < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
    end
  end
end
