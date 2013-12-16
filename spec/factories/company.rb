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
    name Faker::Company.name
    sector "Agriculture, Music, Arts and Crafts, Photography, Graphic Design, Museums and Institutions, Performaing Arts, Fine Arts, Motion Pictures and Films, Design, Architecture & Planning, Civil Engineering, Building Materials, Construction, Import and Export, Wholesale, Wine and Spirits, Luxury Goods and Jewelry, Retail, Furniture, Consumer Goods, Consumer Electronics, Food Production, Supermarkets, Cosmetics, Apparel and Fashion, Sporting Goods, Staffing and Recruiting, Professional Training & Coaching, Security and Investigations, Outsourcing/Offshoring, Facilities Services, Business Supplies and Equipment, Human Resources, Marketing and Advertising, Public Relations and Communications, Market Research, Management Consulting, E-Learning, Research, Education Management, Primary/Secondary Education, Higher Education, Venture Capital and Private Equity, Capital Markets, Commercial Real Estate, Banking, Insurance, Investment Management, Investment Banking, Real Estate, Financial Services, Accounting, Government, Computer and Network Security, Computer Hardware, Computer Software, Computer Networking, Internet, Telecommunications, Information Technology and Services, Alternative Dispute Resolution, Law Practice, Legal Services, Manufacturing, Writing and Editing, Online Media, Media Production, Animation, Broadcast Media, Printing, Publishing, Newspapers, Medical, Food & Beverage, Hospitality, Restaurants, Events Services, Translation and Localisation, Information Services, Environmental Services, Transportation".split(", ").sample
    address Faker::AddressAU.full_address
    country "Australia"
    website Faker::Internet.domain_name
    phone Faker::PhoneNumberAU.phone_number
    volunteer
  end
end