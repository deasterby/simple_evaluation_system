# == Schema Information
#
# Table name: indicator_ratings
#
#  id                      :integer          not null, primary key
#  evaluative_indicator_id :integer
#  title                   :string
#  value                   :decimal(4, 1)
#  description             :text
#

require 'test_helper'

class IndicatorRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
