# == Schema Information
#
# Table name: evaluation_definitions
#
#  id              :integer          not null, primary key
#  definition_name :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class EvaluationDefinition < ActiveRecord::Base
  has_many :evaluation_section_definitions, -> { order "order_index" }
end
