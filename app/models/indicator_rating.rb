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
# Indexes
#
#  index_indicator_ratings_on_evaluative_indicator_id  (evaluative_indicator_id)
#

class IndicatorRating < ActiveRecord::Base
  belongs_to :evaluative_indicator
end
