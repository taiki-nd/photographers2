class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :total_rate
      t.integer :comfort_rate
      t.integer :imgquality_rate
      t.integer :cost_rate
      t.text :content
      t.timestamps
    end
  end
end
