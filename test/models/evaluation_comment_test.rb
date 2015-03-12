# == Schema Information
#
# Table name: evaluation_comments
#
#  id                               :integer          not null, primary key
#  evaluation_section_id            :integer
#  evaluation_comment_definition_id :integer
#  comment                          :text
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#
# Indexes
#
#  index_evaluation_comments_on_evaluation_comment_definition_id  (evaluation_comment_definition_id)
#  index_evaluation_comments_on_evaluation_section_id             (evaluation_section_id)
#

require 'test_helper'

class EvaluationCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
