# == Schema Information
#
# Table name: bookmarks
#
#  id           :integer          not null, primary key
#  volunteer_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :bookmark do |f|
    f.volunteer { Volunteer.all.sample }
    f.non_profit { NonProfit.all.sample }
  end
end