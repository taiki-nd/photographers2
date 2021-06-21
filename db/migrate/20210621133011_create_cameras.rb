class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.string :camera_maker
      t.string :camera_name
      t.string :sensor_size
      t.integer :pixels
      t.string :iso
      t.integer :shooting_speed
      t.integer :weight
      t.timestamps
    end
  end
end
