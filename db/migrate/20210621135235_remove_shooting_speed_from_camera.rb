class RemoveShootingSpeedFromCamera < ActiveRecord::Migration[6.0]
  def change
    remove_column :cameras, :shooting_speed, :integer
  end
end
