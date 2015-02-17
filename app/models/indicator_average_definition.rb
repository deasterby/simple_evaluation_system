# == Schema Information
#
# Table name: indicator_average_definitions
#
#  id          :integer          not null, primary key
#  name        :string
#  calculation :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class IndicatorAverageDefinition < ActiveRecord::Base
end
