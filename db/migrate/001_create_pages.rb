class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body

      t.string :author
      t.string :email

      t.integer :reference_id

      t.timestamps
    end
    add_index :pages, :reference_id
    add_index :pages, :title
  end
end