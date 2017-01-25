class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
    	# Type of record to be stored 
    	t.string :name
    	t.decimal :price

    	t.timestamps
    end
  end
end
