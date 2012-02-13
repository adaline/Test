class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name

      t.timestamps
    end
    add_index :references, :name
  end
end
