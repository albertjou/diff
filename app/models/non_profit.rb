class NonProfit < ActiveRecord::Base
  attr_accessible :address, :country, :linkedIn_profile, :logo, :mission, :name, :phone, :sector, :website
end
