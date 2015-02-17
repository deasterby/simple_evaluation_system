# == Schema Information
#
# Table name: evaluation_section_definitions
#
#  id                       :integer          not null, primary key
#  order_index              :integer
#  prompt                   :string
#  evaluation_definition_id :integer
#  sub_domain_id            :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class EvaluationSectionDefinition < ActiveRecord::Base
  belongs_to :sub_domain
  has_many :evaluation_comment_definitions, -> { order "order_index"}
end
