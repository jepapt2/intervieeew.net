class AsToAnswers < ActiveRecord::Migration[6.0]
  def change
    rename_table :as, :answers
  end
end
