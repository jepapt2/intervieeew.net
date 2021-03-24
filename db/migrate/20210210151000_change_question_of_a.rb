class ChangeQuestionOfA < ActiveRecord::Migration[6.0]
  def change
    rename_column :answers, :q, :question
  end
end
