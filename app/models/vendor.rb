class Vendor < ActiveRecord::Base
  attr_accessible :address, :comment, :email, :name, :phone, :events, :password, :admin

  has_and_belongs_to_many :events
  has_secure_password

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |vendor|
        csv << vendor.attributes.values_at(*column_names)
      end
    end
  end
end
