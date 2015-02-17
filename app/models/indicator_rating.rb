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

class IndicatorRating < ActiveRecord::Base
  belongs_to :evaluative_indicator
end
