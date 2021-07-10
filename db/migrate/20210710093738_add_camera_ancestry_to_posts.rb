class AddCameraAncestryToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :Camera_ancestry, :string
    add_column :posts, :Lens_ancestry, :string
  end
end
