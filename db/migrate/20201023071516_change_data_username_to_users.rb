class ChangeDataUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :username, :string, null: false
  end
end
