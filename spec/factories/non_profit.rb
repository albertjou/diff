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
  factory :non_profit do |f|
    f.name { Faker::Company.name }
    f.logo { "http://lorempixel.com/400/400/" + ["abstract", "city", "people", "transport", "animals", "food", "nature", "business", "nightlife", "sports", "technics"].sample }
    f.sector { ["Aged Care and Seniors", "Animals and Birds", "Arts and Culture", "Asthma/Respiratory", "Blindness and Deafness", "Cancer", "Children", "Community Support Services", "Conservation and Environment", "Diabetes", "Disabilities", "Drug and Alcohol Carers", "Education and Training", "Families", "Foundations/Philanthropy", "Gay/Lesbian/Bi/Transgender and Intersex (GLBTI)", "Health - General", "Health - Hospitals & Medical Centres", "Heart Disease", "HIV/AIDS", "Homelessness and Affordable Housing", "Humanitarian", "Indigenous", "Law, Justice and Human Rights", "Libraries and Museums", "Mental Health", "Overseas Aid and Development", "Religion and Religious Groups", "Research", "Rural", "Safety, Rescue and First Aid", "Science and Technology", "Social Enterprise", "Sport and Recreation", "Veterans and Ex-Service Men/Women", "Welfare", "Women", "Youth / Young People"].sample }
    f.mission { Faker::Lorem.paragraphs(3) }
    f.website { "http://www." + Faker::Internet.domain_name }
    f.street_address { Faker::Address.street_address }
    f.city { Faker::AddressAU.city }
    f.postcode { Faker::AddressAU.zip_code }
    f.country { "Australia" }
    f.phone { Faker::PhoneNumberAU.phone_number }
  end
end