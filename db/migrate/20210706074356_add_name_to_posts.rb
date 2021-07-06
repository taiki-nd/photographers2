class AddNameToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :name_cam, :string
  end
end
