class Domain < ActiveRecord::Base
  has_many :sub_domains
end
