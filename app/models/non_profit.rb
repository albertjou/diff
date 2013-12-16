# == Schema Information
#
# Table name: non_profits
#
#  id                :integer          not null, primary key
#  logo              :string(255)
#  mission           :text
#  sector            :string(255)
#  website           :string(255)
#  phone             :string(255)
#  street_address    :string(255)
#  secondary_address :string(255)
#  city              :string(255)
#  postcode          :string(255)
#  country           :string(255)
#  name              :string(255)
#  linkedIn_profile  :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class NonProfit < ActiveRecord::Base
  attr_accessible :address, :country, :linkedIn_profile, :logo, :mission, :name, :phone, :sector, :website

  has_many :sponsors
  has_many :tasks, :through => :sponsors
  has_many :bookmarks, :dependent => :destroy

  validates :sector, :inclusion => { :in => ["Aged Care and Seniors", "Animals and Birds", "Arts and Culture", "Asthma/Respiratory", "Blindness and Deafness", "Cancer", "Children", "Community Support Services", "Conservation and Environment", "Diabetes", "Disabilities", "Drug and Alcohol Carers", "Education and Training", "Families", "Foundations/Philanthropy", "Gay/Lesbian/Bi/Transgender and Intersex (GLBTI)", "Health - General", "Health - Hospitals & Medical Centres", "Heart Disease", "HIV/AIDS", "Homelessness and Affordable Housing", "Humanitarian", "Indigenous", "Law, Justice and Human Rights", "Libraries and Museums", "Mental Health", "Overseas Aid and Development", "Religion and Religious Groups", "Research", "Rural", "Safety, Rescue and First Aid", "Science and Technology", "Social Enterprise", "Sport and Recreation", "Veterans and Ex-Service Men/Women", "Welfare", "Women", "Youth / Young People"],
    :message => "%{value} is not a valid category."}
end
