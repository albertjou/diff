# == Schema Information
#
# Table name: volunteers
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  mobile                 :string(255)
#  company_id             :integer
#  position_title         :string(255)
#  profile_picture        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

FactoryGirl.define do
  factory :volunteer do
    name Faker::Name.name
    email Faker::Internet.email
    company
    tasks
    competencies
    mobile Faker::PhoneNumberAU.phone_number
    position_title Faker::Company.position
    password 'Ineedtochangethis'
    password_confirmation 'Ineedtochangethis'

  end

end
