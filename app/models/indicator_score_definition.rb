# == Schema Information
#
# Table name: indicator_score_definitions
#
#  id         :integer          not null, primary key
#  name       :string
#  min        :integer
#  max        :integer
#  fractional :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IndicatorScoreDefinition < ActiveRecord::Base
  enum fractional: [ :whole, :half, :quarter ]
end
