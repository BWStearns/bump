class CreateArticlesLoisJoinTable < ActiveRecord::Migration
  def change
    create_table :articles_loes, :id => false do |t|
      t.integer :article_id
      t.integer :loe_id
    end
  end
end