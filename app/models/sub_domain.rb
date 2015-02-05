class SubDomain < ActiveRecord::Base
  belongs_to :domain
  belongs_to :indicator_average_definition
  belongs_to :indicator_score_definition
end
