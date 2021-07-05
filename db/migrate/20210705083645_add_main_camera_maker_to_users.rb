class AddMainCameraMakerToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :main_camera_maker, :string
  end
end
