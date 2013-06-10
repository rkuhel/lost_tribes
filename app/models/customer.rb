class Customer < ActiveRecord::Base
	
	has_and_belongs_to_many :events  

  attr_accessible :email, :name, :vendor, :zip, :comment, :events 
end
