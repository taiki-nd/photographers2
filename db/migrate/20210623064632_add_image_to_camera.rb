class AddImageToCamera < ActiveRecord::Migration[6.0]
  def change
    add_column :cameras, :image, :text
  end
end
