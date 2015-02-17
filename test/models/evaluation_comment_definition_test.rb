# == Schema Information
#
# Table name: evaluation_comment_definitions
#
#  id                               :integer          not null, primary key
#  prompt                           :string
#  required                         :boolean
#  start_of_section                 :boolean
#  order_index                      :integer
#  max_len                          :integer
#  evaluation_section_definition_id :integer
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#

require 'test_helper'

class EvaluationCommentDefinitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
