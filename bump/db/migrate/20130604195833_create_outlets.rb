class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :name
      t.references :articles
      t.integer :distribution
      t.string :state

      t.timestamps
    end
    add_index :outlets, :articles_id
  end
end
