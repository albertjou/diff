# == Schema Information
#
# Table name: bookmarks
#
#  id           :integer          not null, primary key
#  volunteer_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Bookmark < ActiveRecord::Base
  attr_accessible :volunteer_id

  belongs_to :volunteer
  has_and_belongs_to_many :non_profits



end
