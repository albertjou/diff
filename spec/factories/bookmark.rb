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
  factory :bookmark do
    volunteer build_list(:volunteer, 30)
    non_profits build_list(:non_profits, 30)
  end
end