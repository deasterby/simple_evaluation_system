class EvaluationSectionDefinition < ActiveRecord::Base
  belongs_to :sub_domain
  has_many :evaluation_comment_definitions, -> { order "order_index"}
end
