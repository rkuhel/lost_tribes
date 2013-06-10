class CreateEventsVendorsTable < ActiveRecord::Migration
  def change
  	create_table :events_vendors, :id => false do |t|
  		t.integer :event_id
  		t.integer :vendor_id
  	end
  end 
end
