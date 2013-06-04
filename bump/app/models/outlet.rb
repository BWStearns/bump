class Outlet < ActiveRecord::Base
  has_many :articles, foreign_key: :title
  attr_accessible :distribution, :name, :state, :article_ids
end
