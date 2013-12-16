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

require 'spec_helper'

describe NonProfit do
  it { should have_many :sponsors }
  it { should have_many(:tasks).through(:sponsors) }
  it { should have_and_belong_to_many :bookmarks }
end