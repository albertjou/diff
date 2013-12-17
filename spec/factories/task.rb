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
  factory :task do |f|
    f.name { Faker::Lorem.sentence(1) }
    f.description { Faker::Lorem.paragraphs(3) }
    f.confidentiality { [true, false].sample }
    f.volunteer_size { (1..100).to_a.sample }
    f.street_address { Faker::Address.street_address }
    f.city { Faker::AddressAU.city }
    f.postcode { Faker::AddressAU.zip_code }
    f.country { "Australia" }
    f.status { ['seeking', 'filled', 'completed'].sample }
    f.scheduled { startdate - rand(500) }
    competencies { Competency.all.sample(4) }
  end
end