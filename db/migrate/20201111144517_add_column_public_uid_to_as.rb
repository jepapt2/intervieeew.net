class AddColumnPublicUidToAs < ActiveRecord::Migration[6.0]
  def change
    add_column :as, :public_uid, :string
  end
end
