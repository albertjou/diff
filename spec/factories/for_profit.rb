FactoryGirl.define do
  factory :for_profit do |f|
    f.name { Faker::Company.name }
    f.logo { "http://lorempixel.com/400/400/" + ["abstract", "city", "people", "transport", "animals", "food", "nature", "business", "nightlife", "sports", "technics"].sample }
    f.sector { "Agriculture, Music, Arts and Crafts, Photography, Graphic Design, Museums and Institutions, Performaing Arts, Fine Arts, Motion Pictures and Films, Design, Architecture & Planning, Civil Engineering, Building Materials, Construction, Import and Export, Wholesale, Wine and Spirits, Luxury Goods and Jewelry, Retail, Furniture, Consumer Goods, Consumer Electronics, Food Production, Supermarkets, Cosmetics, Apparel and Fashion, Sporting Goods, Staffing and Recruiting, Professional Training & Coaching, Security and Investigations, Outsourcing/Offshoring, Facilities Services, Business Supplies and Equipment, Human Resources, Marketing and Advertising, Public Relations and Communications, Market Research, Management Consulting, E-Learning, Research, Education Management, Primary/Secondary Education, Higher Education, Venture Capital and Private Equity, Capital Markets, Commercial Real Estate, Banking, Insurance, Investment Management, Investment Banking, Real Estate, Financial Services, Accounting, Government, Computer and Network Security, Computer Hardware, Computer Software, Computer Networking, Internet, Telecommunications, Information Technology and Services, Alternative Dispute Resolution, Law Practice, Legal Services, Manufacturing, Writing and Editing, Online Media, Media Production, Animation, Broadcast Media, Printing, Publishing, Newspapers, Medical, Food & Beverage, Hospitality, Restaurants, Events Services, Translation and Localisation, Information Services, Environmental Services, Transportation".split(", ").sample }
    f.street_address { Faker::Address.street_address }
    f.city { Faker::AddressAU.city }
    f.postcode { Faker::AddressAU.zip_code }
    f.country { "Australia" }
    f.website { "http://www." + Faker::Internet.domain_name }
    f.phone { Faker::PhoneNumberAU.phone_number }
  end
end