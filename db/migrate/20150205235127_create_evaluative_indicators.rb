class CreateEvaluativeIndicators < ActiveRecord::Migration
  def change
    create_table :evaluative_indicators do |t|
      t.string :name
      t.text :description
      t.belongs_to :sub_domain, index: true

      t.timestamps null: false
    end

    create_table :indicator_ratings do |t|
      t.belongs_to :evaluative_indicator, index:true
      t.string :title
      t.decimal :value
      t.text :description
    end
  end
end
