class AddSensorSizeToLenz < ActiveRecord::Migration[6.0]
  def change
    add_column :lenzs, :sensor_size, :string
  end
end
