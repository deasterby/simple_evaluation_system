class EvaluationDefinition < ActiveRecord::Base
  has_many :evaluation_section_definitions, -> { order "order_index" }
end
