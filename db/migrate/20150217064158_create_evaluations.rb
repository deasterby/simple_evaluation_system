class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.datetime :evaluation_date
      t.references :evaluation_definition, index: true

      t.timestamps null: false
    end
    add_foreign_key :evaluations, :evaluation_definitions
  end
end
