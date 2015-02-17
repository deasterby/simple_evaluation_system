# == Schema Information
#
# Table name: evaluative_indicators
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  sub_domain_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class EvaluativeIndicatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
