class ChangeColumnToQuestion < ActiveRecord::Migration[6.0]
  def change
    change_column_null :questions, :content_1, false ,''
    change_column_null :questions, :content_2, false ,''
    change_column_null :questions, :content_3, false ,''
  end
end
