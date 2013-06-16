class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :title, :customers, :vendors

  has_and_belongs_to_many :customers
  has_and_belongs_to_many :vendors

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |event|
        csv << event.attributes.values_at(*column_names)
      end
    end
  end
end
