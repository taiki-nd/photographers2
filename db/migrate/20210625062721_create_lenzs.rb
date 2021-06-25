class CreateLenzs < ActiveRecord::Migration[6.0]
  def change
    create_table :lenzs do |t|
      t.text :image
      t.string :lens_maker
      t.string :lens_name
      t.string :sensor_size
      t.string :f_number
      t.string :focal_length
      t.string :weight
      t.timestamps
    end
  end
end
