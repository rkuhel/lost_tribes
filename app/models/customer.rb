class Customer < ActiveRecord::Base
	 attr_accessible :email, :name, :vendor, :zip, :comment, :events 
	
	has_and_belongs_to_many :events  
end
