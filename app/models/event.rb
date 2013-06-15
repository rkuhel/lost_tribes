class Event < ActiveRecord::Base
	attr_accessible :date, :address, :city, :description, :title, :customers, :vendors

	has_and_belongs_to_many :customers 
	has_and_belongs_to_many :vendors 
end
