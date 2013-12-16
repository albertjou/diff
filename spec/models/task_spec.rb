# == Schema Information
#
# Table name: tasks
#
#  id                :integer          not null, primary key
#  description       :text
#  category          :string(255)
#  confidentiality   :boolean
#  sponsor_id        :integer
#  volunteer_size    :integer
#  status            :string(255)
#  name              :string(255)
#  latitude          :float
#  longitude         :float
#  street_address    :string(255)
#  secondary_address :string(255)
#  city              :string(255)
#  postcode          :string(255)
#  country           :string(255)
#  scheduled         :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'spec_helper'

describe Task do
  it { should belong_to :sponsor }
  it { should have_and_belong_to_many :volunteers }
  it { should have_and_belong_to_many :competencies }
  it { should have_one(:charity).through(:sponsor) }
end
