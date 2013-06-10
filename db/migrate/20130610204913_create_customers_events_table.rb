class CreateCustomersEventsTable < ActiveRecord::Migration
  def change
  		create_table :customers_events, :id => false do |t|
  		t.integer :customer_id
  		t.integer :event_id
  	end
  end
end
