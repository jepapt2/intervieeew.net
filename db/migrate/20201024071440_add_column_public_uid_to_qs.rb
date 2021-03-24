class AddColumnPublicUidToQs < ActiveRecord::Migration[6.0]
  def change
    add_column :qs, :public_uid, :string
  end
end
