class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
    	t.string :fname
    	t.string :lname
    	t.string :email
    	t.string :message
    	
    	t.timestamps
    end
  end
end
