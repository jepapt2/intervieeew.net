class AddDetailsToAs < ActiveRecord::Migration[6.0]
  def change
    add_column :as, :select_image, :string
  end
end
