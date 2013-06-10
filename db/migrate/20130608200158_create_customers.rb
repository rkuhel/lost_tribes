class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :zip
      t.text :comment 
    

      t.timestamps
    end
  end
end
