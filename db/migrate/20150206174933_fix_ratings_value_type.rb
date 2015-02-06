class FixRatingsValueType < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        change_column :indicator_ratings, :value, :decimal, scale: 1, precision: 4
      end
      dir.down do
        change_column :indicator_ratings, :value, :decimal
      end
    end
  end
end
