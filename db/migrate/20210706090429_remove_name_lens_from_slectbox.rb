class RemoveNameLensFromSlectbox < ActiveRecord::Migration[6.0]
  def change
    remove_column :slectboxes, :name_lens, :string
  end
end
