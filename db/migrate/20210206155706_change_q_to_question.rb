class ChangeQToQuestion < ActiveRecord::Migration[6.0]
  def change
    rename_table :qs, :questions
  end
end
