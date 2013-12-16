# == Schema Information
#
# Table name: tasks
#
#  id              :integer          not null, primary key
#  description     :text
#  category        :string(255)
#  confidentiality :boolean
#  non_profit_id   :integer
#  sponsor_id      :integer
#  volunteer_size  :integer
#  status          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name            :string(255)
#  latitude        :float
#  longitude       :float
#  address         :text
#  scheduled       :datetime
#

require 'spec_helper'

describe Task do
  it { should belong_to :sponsor }
  it { should have_and_belong_to_many :volunteers }
  it { should have_and_belong_to_many :competencies }
  it { should have_one(:charity).through(:sponsor) }
end
