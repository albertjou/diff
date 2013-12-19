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

class Company < ActiveRecord::Base
  attr_accessible :stree_address, :secondary_address, :city, :postcode, :country, :description, :hours_contributed, :logo, :name, :phone, :sector, :website, :type


end
