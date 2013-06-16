class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :vendor, :zip, :comment, :events

  has_and_belongs_to_many :events

  validates :password, presence: true, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: true, :format => { :with => /^.+@.+\..+$/i, :on => :create }

  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |customer|
      csv << customer.attributes.values_at(*column_names)
    end
  end
  end
end

