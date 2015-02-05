class CreateIndicatorAverageDefinitions < ActiveRecord::Migration
  def change
    create_table :indicator_average_definitions do |t|
      t.string :name
      t.text :calculation

      t.timestamps null: false
    end
  end
end
