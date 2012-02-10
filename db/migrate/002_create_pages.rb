class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :text

      t.integer :user_id
      t.integer :reference_id

      t.timestamps
    end
    add_index :pages, :reference_id
    add_index :pages, :user_id
    add_index :pages, :title
  end
end