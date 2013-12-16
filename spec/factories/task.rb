# == Schema Information
#
# Table name: tasks
#
#  id              :integer          not null, primary key
#  charity_id      :string(255)
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

require 'date'

FactoryGirl.define do
  startdate = Date.today + 100
  factory :task do
    name Faker::Lorem.sentence(1)
    description Faker::Lorem.paragraphs(3)
    confidentiality [true, false].sample
    volunteer_size rand(100)
    address Faker::AddressAU.full_address
    status ['seeking', 'filled', 'completed'].sample
    scheduled { startdate - rand(500) }
    sponsor
  end
end