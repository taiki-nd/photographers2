class AddDateToPages < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :Date, :string
  end
end
