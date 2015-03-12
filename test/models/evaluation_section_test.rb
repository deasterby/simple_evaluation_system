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

require 'test_helper'

class EvaluationSectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
