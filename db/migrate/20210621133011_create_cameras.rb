class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|

      t.timestamps
    end
  end
end
