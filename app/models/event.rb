class Event < ActiveRecord::Base
	has_and_belongs_to_many :customers 
	has_and_belongs_to_many :vendors 
	
  attr_accessible :date, :description, :location, :title, :customers, :vendors
end
