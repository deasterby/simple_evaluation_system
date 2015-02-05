class AddDefsToSubDomain < ActiveRecord::Migration
  def change
    add_reference :sub_domains, :indicator_average_definition, index: true
    add_foreign_key :sub_domains, :indicator_average_definitions
    add_reference :sub_domains, :indicator_score_definition, index: true
    add_foreign_key :sub_domains, :indicator_score_definitions
    add_foreign_key :sub_domains, :domains
  end
end
