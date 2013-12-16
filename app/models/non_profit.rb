# == Schema Information
#
# Table name: non_profits
#
#  id               :integer          not null, primary key
#  logo             :string(255)
#  mission          :text
#  sector           :string(255)
#  website          :string(255)
#  phone            :string(255)
#  address          :text
#  country          :string(255)
#  name             :string(255)
#  linkedIn_profile :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class NonProfit < ActiveRecord::Base
  attr_accessible :address, :country, :linkedIn_profile, :logo, :mission, :name, :phone, :sector, :website

  has_many :sponsor
  has_many :tasks, :through => :sponsors
  has_and_belongs_to_many :bookmarks
end
