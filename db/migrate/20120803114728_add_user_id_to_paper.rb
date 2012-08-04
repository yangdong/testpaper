class AddUserIdToPaper < ActiveRecord::Migration
  def change
    add_column :papers, :user_id, :string
  end
end
