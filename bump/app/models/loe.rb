class Loe < ActiveRecord::Base
  has_and_belongs_to_many :article
  attr_accessible :customer, :name, :article #, :loe_id
end
