class Company < ActiveRecord::Base
  attr_accessible :address, :country, :description, :hours_contributed, :linkedIn_profile, :logo, :name, :phone, :sector, :website
end
