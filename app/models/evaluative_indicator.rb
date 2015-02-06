class EvaluativeIndicator < ActiveRecord::Base
  has_many :indicator_ratings
  belongs_to :sub_domain
end
