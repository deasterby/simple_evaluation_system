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

require 'test_helper'

class EvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
