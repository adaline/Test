class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.string :body
      t.string :author
      t.string :email
      t.string :reference
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
