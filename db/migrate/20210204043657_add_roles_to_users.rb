class AddRolesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :roles, :json
  end
end
