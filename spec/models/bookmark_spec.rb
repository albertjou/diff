# == Schema Information
#
# Table name: bookmarks
#
#  id           :integer          not null, primary key
#  volunteer_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Bookmark do
  it { should belong_to :volunteer }
  it { should have_and_belong_to_many :non_profits}
end