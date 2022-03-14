class CreateBarbecues < ActiveRecord::Migration[6.1]
  def change
    create_table :barbecues do |t|
      t.string :name
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
