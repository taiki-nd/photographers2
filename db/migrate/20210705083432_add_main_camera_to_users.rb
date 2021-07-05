class AddMainCameraToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :main_camera, :string
  end
end
