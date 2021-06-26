class AddLenzIdToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :lenz_id, :integer
  end
end
