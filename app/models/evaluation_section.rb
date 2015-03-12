# == Schema Information
#
# Table name: evaluation_sections
#
#  id                               :integer          not null, primary key
#  evaluation_id                    :integer
#  evaluation_section_definition_id :integer
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#
# Indexes
#
#  index_evaluation_sections_on_evaluation_id                     (evaluation_id)
#  index_evaluation_sections_on_evaluation_section_definition_id  (evaluation_section_definition_id)
#

class EvaluationSection < ActiveRecord::Base
  belongs_to :evaluation
  belongs_to :evaluation_section_definition
  has_many :evaluation_comments, -> { includes(:evaluation_comment_definition).order("evaluation_comment_definitions.order_index")},  :dependent => :destroy
  accepts_nested_attributes_for :evaluation_comments
  has_many :evaluation_indicators, -> { includes(:evaluative_indicator).order("evaluative_indicators.order_index")}, :dependent => :destroy
  accepts_nested_attributes_for :evaluation_indicators

end
