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
#  street_address    :string(255)
#  secondary_address :string(255)
#  city              :string(255)
#  postcode          :string(255)
#  country           :string(255)
#  website           :string(255)
#  phone             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'spec_helper'

describe Company do
  it { should have_many :volunteers }
  it { should have_many(:tasks).through(:volunteers) }

end
