class RenameQColumnToAnswer < ActiveRecord::Migration[6.0]
  def change
    remove_column :answers, :q_id, :integer
    add_reference :answers, :question, foreign_key: true
  end
end
