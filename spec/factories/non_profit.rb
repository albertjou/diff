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

FactoryGirl.define do
  factory :non_profit do

  end
end