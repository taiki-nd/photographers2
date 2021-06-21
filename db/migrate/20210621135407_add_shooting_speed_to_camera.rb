class AddShootingSpeedToCamera < ActiveRecord::Migration[6.0]
  def change
    add_column :cameras, :shooting_speed, :string
  end
end
