class ChangeImageOfAs < ActiveRecord::Migration[6.0]
  def change
    change_column_null :as, :image, true
  end
end
