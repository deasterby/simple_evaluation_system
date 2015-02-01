require 'test_helper'

class IndicatorScoreDefinitionTest < ActiveSupport::TestCase
   test "check enum" do
     isd = IndicatorScoreDefinition.new
     isd.name = "Test 1"
     isd.min = 1
     isd.max = 4
     isd.half!
     isd.save

     isd = IndicatorScoreDefinition.find_by_name("Test 1")
     assert isd.half?
     assert !isd.whole?
   end
end
