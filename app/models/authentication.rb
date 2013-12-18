# == Schema Information
#
# Table name: authentications
#
#  id           :integer          not null, primary key
#  volunteer_id :integer
#  provider     :string(255)
#  uid          :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Authentication < ActiveRecord::Base
  belongs_to :user
  attr_accessible :uid, :provider
end