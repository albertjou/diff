# == Schema Information
#
# Table name: bookmarks
#
#  id            :integer          not null, primary key
#  volunteer_id  :integer
#  non_profit_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Bookmark do
  it { should belong_to :volunteer }
  it { should belong_to :non_profit }
end
