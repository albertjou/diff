# == Schema Information
#
# Table name: competencies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Competency do
  it { should have_and_belong_to_many :tasks }
  it { should have_and_belong_to_many :volunteers }
end