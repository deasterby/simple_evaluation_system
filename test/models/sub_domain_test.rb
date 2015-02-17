# == Schema Information
#
# Table name: sub_domains
#
#  id                              :integer          not null, primary key
#  name                            :string
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  domain_id                       :integer
#  indicator_average_definition_id :integer
#  indicator_score_definition_id   :integer
#

require 'test_helper'

class SubDomainTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
