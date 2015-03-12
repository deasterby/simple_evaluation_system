# == Schema Information
#
# Table name: evaluation_indicators
#
#  id                      :integer          not null, primary key
#  evaluative_indicator_id :integer
#  evaluation_section_id   :integer
#  comment                 :text
#  score                   :decimal(4, 1)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_evaluation_indicators_on_evaluation_section_id    (evaluation_section_id)
#  index_evaluation_indicators_on_evaluative_indicator_id  (evaluative_indicator_id)
#

require 'test_helper'

class EvaluationIndicatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
