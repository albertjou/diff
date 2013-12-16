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

class Bookmark < ActiveRecord::Base
  attr_accessible :volunteer_id, :non_profit_id

  belongs_to :volunteer
  belongs_to :non_profit



end
