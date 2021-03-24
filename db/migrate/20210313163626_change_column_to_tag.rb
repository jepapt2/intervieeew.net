class ChangeColumnToTag < ActiveRecord::Migration[6.0]
  def change
    change_column :tags, :name, :string, :limit=>10
  end
end
