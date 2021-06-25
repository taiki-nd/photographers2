class AddImageToLenz < ActiveRecord::Migration[6.0]
  def change
    add_column :lenzs, :image, :text
  end
end
