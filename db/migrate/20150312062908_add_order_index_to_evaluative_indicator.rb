class AddOrderIndexToEvaluativeIndicator < ActiveRecord::Migration
  def change
    add_column :evaluative_indicators, :order_index, :integer
  end
end
