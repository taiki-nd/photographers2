class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.text :twitter
      t.timestamps
    end
  end
end
