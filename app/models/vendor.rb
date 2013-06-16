class Vendor < ActiveRecord::Base
	  attr_accessible :address, :city, :comment, :email, :name, :phone, :events, :password, :admin

	has_and_belongs_to_many :events
	has_secure_password



end


