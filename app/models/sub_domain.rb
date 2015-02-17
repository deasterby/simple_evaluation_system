# == Schema Information
#
# Table name: sub_domains
#
#  id                              :integer          not null, primary key
#  name                            :string
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  domain_id                       :integer
#  indicator_average_definition_id :integer
#  indicator_score_definition_id   :integer
#

class SubDomain < ActiveRecord::Base
  belongs_to :domain
  belongs_to :indicator_average_definition
  belongs_to :indicator_score_definition
  has_many :evaluative_indicators
end
