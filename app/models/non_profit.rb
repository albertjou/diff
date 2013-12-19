# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  logo              :string(255)
#  sector            :string(255)
#  hours             :integer
#  website           :string(255)
#  phone             :string(255)
#  description       :text
#  mission           :text
#  secondary_address :string(255)
#  street_address    :string(255)
#  city              :string(255)
#  postcode          :string(255)
#  country           :string(255)
#  type              :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class NonProfit < Company
  attr_accessible :street_address, :secondary_address, :city, :postcode, :country, :logo, :mission, :name, :phone, :sector, :website, :mission, :description

  has_many :sponsors
  has_many :tasks, :through => :sponsors
  has_many :bookmarks, :dependent => :destroy

  # validates :sector, :inclusion => { :in => ["Aged Care and Seniors", "Animals and Birds", "Arts and Culture", "Asthma/Respiratory", "Blindness and Deafness", "Cancer", "Children", "Community Support Services", "Conservation and Environment", "Diabetes", "Disabilities", "Drug and Alcohol Carers", "Education and Training", "Families", "Foundations/Philanthropy", "Gay/Lesbian/Bi/Transgender and Intersex (GLBTI)", "Health - General", "Health - Hospitals & Medical Centres", "Heart Disease", "HIV/AIDS", "Homelessness and Affordable Housing", "Humanitarian", "Indigenous", "Law, Justice and Human Rights", "Libraries and Museums", "Mental Health", "Overseas Aid and Development", "Religion and Religious Groups", "Research", "Rural", "Safety, Rescue and First Aid", "Science and Technology", "Social Enterprise", "Sport and Recreation", "Veterans and Ex-Service Men/Women", "Welfare", "Women", "Youth / Young People"],
  #   :message => "%{value} is not a valid category."}
end
