# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  type                   :string(255)
#  name                   :string(255)
#  mobile                 :string(255)
#  position_title         :string(255)
#  profile_picture        :string(255)
#  company_id             :integer
#  non_profit_id          :integer
#

class Volunteer < User
  attr_accessible :company_id

  belongs_to :company
  has_and_belongs_to_many :tasks
  has_many :bookmarks, :dependent => :destroy
  has_and_belongs_to_many :competencies

  validates :name, :email, :position_title, :presence => true

end
