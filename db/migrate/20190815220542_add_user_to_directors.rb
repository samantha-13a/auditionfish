class AddUserToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :user_id, :integer
    add_index :directors, :user_id
  end
end
