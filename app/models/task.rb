# == Schema Information
#
# Table name: tasks
#
#  id                :integer          not null, primary key
#  description       :text
#  category          :string(255)
#  confidentiality   :boolean
#  sponsor_id        :integer
#  volunteer_size    :integer
#  status            :string(255)
#  name              :string(255)
#  latitude          :float
#  longitude         :float
#  street_address    :string(255)
#  secondary_address :string(255)
#  city              :string(255)
#  postcode          :string(255)
#  country           :string(255)
#  scheduled         :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Task < ActiveRecord::Base
  attr_accessible :category, :confidentiality, :description, :non_profit_id, :sponsor_id, :volunteer_size, :status

  belongs_to :sponsor
  has_and_belongs_to_many :volunteers
  has_and_belongs_to_many :competencies
  has_one :charity, :through => :sponsor


  # Geocoding
  geocoded_by :street_address
  after_validation :geocode, :if => :street_address_changed?

  def complete_address
    "#{self.street_address}
    #{self.city} #{self.postcode}
    #{self.country}"
  end

end
