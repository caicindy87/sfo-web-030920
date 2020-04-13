class SetDefaultValueToLikes < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :likes, :integer, default: 0
    
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end