class Article < ActiveRecord::Base
  belongs_to :analyst 
  belongs_to :outlet
  has_and_belongs_to_many :loe
  attr_accessible :article_body, :author, :distribution, :loe, :most_important, :pubdate, :publication, :state, :submitted, :summary, :title, :url, :analyst_id, :loe_ids, :outlet_id
end
