class Change2PostsColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :lens_maker, :string
  end
end
