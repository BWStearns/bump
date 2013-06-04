class CreateLoes < ActiveRecord::Migration
  def change
    create_table :loes do |t|
      t.string :name
      t.string :customer
      t.references :article

      t.timestamps
    end
    add_index :loes, :article_id
  end
end
