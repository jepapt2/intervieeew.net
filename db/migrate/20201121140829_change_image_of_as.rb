class ChangeImageOfAs < ActiveRecord::Migration[6.0]
  def change
    change_column_null :As, :image, true
  end
end
