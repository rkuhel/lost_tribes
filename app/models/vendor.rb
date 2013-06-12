class Vendor < ActiveRecord::Base
	  attr_accessible :address, :comment, :email, :name, :phone, :events, :password

	has_and_belongs_to_many :events
	has_secure_password
end
