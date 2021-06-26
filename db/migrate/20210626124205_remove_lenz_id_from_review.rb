class RemoveLenzIdFromReview < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :Lenz_id, :integer
  end
end
