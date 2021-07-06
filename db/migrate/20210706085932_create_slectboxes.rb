class CreateSlectboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :slectboxes do |t|
      t.string :name_cam, null: false
      t.string :name_lens, null: false
      t.string :ancestry
      t.timestamps
    end
  end
end
