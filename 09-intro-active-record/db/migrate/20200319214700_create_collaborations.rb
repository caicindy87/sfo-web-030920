class CreateCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.integer :author_id
      t.integer :book_id
    end
  end
end
