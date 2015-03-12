class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.datetime :evaluation_date
      t.references :evaluation_definition, index: true

      t.timestamps null: false
    end
    add_foreign_key :evaluations, :evaluation_definitions

    create_table :evaluation_sections do |t|
      t.references :evaluation, index: true
      t.references :evaluation_section_definition, index: true

      t.timestamps null: false
    end
    add_foreign_key :evaluation_sections, :evaluations
    add_foreign_key :evaluation_sections, :evaluation_section_definitions

    create_table :evaluation_comments do |t|
      t.references :evaluation_section, index: true
      t.references :evaluation_comment_definition, index: true
      t.text :comment

      t.timestamps null: false
    end
    add_foreign_key :evaluation_comments, :evaluation_sections
    add_foreign_key :evaluation_comments, :evaluation_comment_definitions

    create_table :evaluation_indicators do |t|
      t.references :evaluative_indicator, index: true
      t.references :evaluation_section, index: true
      t.text :comment
      t.decimal :score, scale: 1, precision: 4

      t.timestamps null: false
    end
    add_foreign_key :evaluation_indicators, :evaluative_indicators
    add_foreign_key :evaluation_indicators, :evaluation_sections

  end
end
