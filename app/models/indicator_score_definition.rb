class IndicatorScoreDefinition < ActiveRecord::Base
  enum fractional: [ :whole, :half, :quarter ]
end
