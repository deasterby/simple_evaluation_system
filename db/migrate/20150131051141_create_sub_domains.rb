class CreateSubDomains < ActiveRecord::Migration
  def change
    create_table :sub_domains do |t|
      t.string :name

      t.timestamps null: false
    end
    add_reference :sub_domains, :domain
  end
end
