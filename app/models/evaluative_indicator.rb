# == Schema Information
#
# Table name: evaluative_indicators
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  sub_domain_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class EvaluativeIndicator < ActiveRecord::Base
  has_many :indicator_ratings
  belongs_to :sub_domain
end
