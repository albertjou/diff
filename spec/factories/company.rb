# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  logo              :string(255)
#  sector            :string(255)
#  name              :string(255)
#  linkedIn_profile  :string(255)
#  hours_contributed :integer
#  description       :text
#  address           :text
#  country           :string(255)
#  website           :string(255)
#  phone             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :company do

  end
end