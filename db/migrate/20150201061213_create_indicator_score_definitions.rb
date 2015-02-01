class CreateIndicatorScoreDefinitions < ActiveRecord::Migration
  def change
    create_table :indicator_score_definitions do |t|
      t.string  :name
      t.integer :min
      t.integer :max
      t.integer :fractional

      t.timestamps null: false
    end
  end
end
