class IndicatorScoreDefinitionsController < ApplicationController
  active_scaffold :"indicator_score_definition" do |conf|
    conf.columns[:fractional].form_ui = :select
    conf.columns[:fractional].options = {:options => [:whole, :half, :quarter] }
  end
end
