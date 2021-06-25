class AddCameraIdToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :camera_id, :integer
  end
end
