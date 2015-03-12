# == Schema Information
#
# Table name: evaluations
#
#  id                       :integer          not null, primary key
#  evaluation_date          :datetime
#  evaluation_definition_id :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
# Indexes
#
#  index_evaluations_on_evaluation_definition_id  (evaluation_definition_id)
#

class Evaluation < ActiveRecord::Base
  belongs_to :evaluation_definition
  has_many :evaluation_sections, -> { includes(:evaluation_section_definition).order "evaluation_section_definitions.order_index" }, :dependent => :destroy
  accepts_nested_attributes_for :evaluation_sections

  def display_name
    evaluation_definition.definition_name + " : " + id.to_s + "-" + evaluation_date.to_default_s
  end
end
