class RemoveMountFromLenz < ActiveRecord::Migration[6.0]
  def change
    remove_column :lenzs, :Mount, :string
  end
end
