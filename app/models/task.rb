# == Schema Information
#
# Table name: tasks
#
#  id              :integer          not null, primary key
#  description     :text
#  category        :string(255)
#  confidentiality :boolean
#  non_profit_id   :integer
#  sponsor_id      :integer
#  volunteer_size  :integer
#  status          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name            :string(255)
#  latitude        :float
#  longitude       :float
#  address         :text
#  scheduled       :datetime
#

class Task < ActiveRecord::Base
  attr_accessible :category, :confidentiality, :description, :non_profit_id, :sponsor_id, :volunteer_size, :status

  belongs_to :sponsor
  has_and_belongs_to_many :volunteers
  has_and_belongs_to_many :competencies
  has_one :charity, :through => :sponsor


  # Geocoding
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
