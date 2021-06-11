class ChangePostsColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :camera_maker, :string
  end
end
