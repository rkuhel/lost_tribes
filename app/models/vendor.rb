class Vendor < ActiveRecord::Base
 attr_accessible :address, :city, :comment, :email, :name, :phone, :events, :password, :admin

  has_and_belongs_to_many :events
  has_secure_password

validates :password, presence: true, length: { in: 6..20 }

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |vendor|
        csv << vendor.attributes.values_at(*column_names)
      end
    end
  end

end


