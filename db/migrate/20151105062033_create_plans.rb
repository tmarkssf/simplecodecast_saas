class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :plan_id
      t.string :name
      t.decimal :price
    
      t.timestamps
    end
  end
end
