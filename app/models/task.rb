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
  attr_accessible :category, :confidentiality, :description, :volunteer_size, :status, :name, :secondary_address, :street_address, :city, :postcode, :country, :scheduled, :competency_ids

  belongs_to :sponsor
  has_and_belongs_to_many :volunteers
  has_and_belongs_to_many :competencies
  has_one :non_profit, :through => :sponsor


  # Geocoding
  geocoded_by :full_address
  after_validation :geocode, :if => :street_address_changed?

  def full_address
    [street_address, city, country].compact.join(', ')
  end
end
