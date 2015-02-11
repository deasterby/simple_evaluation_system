class CreateEvaluationDefinitions < ActiveRecord::Migration
  def change
    create_table :evaluation_definitions do |t|
      t.string :definition_name

      t.timestamps null: false
    end

    create_table :evaluation_section_definitions do |t|
      t.integer :order_index
      t.belongs_to :evaluation_definition
      t.belongs_to :sub_domain

      t.timestamps null: false
    end

    create_table :evaluation_comment_definitions do |t|
      t.boolean :required
      t.boolean :start_of_section
      t.integer :order_index
      t.integer :max_len
      t.belongs_to :evaluation_section_definition

      t.timestamps null: false
    end

  end
end
