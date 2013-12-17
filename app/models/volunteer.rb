# == Schema Information
#
# Table name: volunteers
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  mobile                 :string(255)
#  company_id             :integer
#  position_title         :string(255)
#  profile_picture        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
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
#

class Volunteer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :company_id, :mobile, :name, :position_title

  belongs_to :company
  has_and_belongs_to_many :tasks
  has_many :bookmarks, :dependent => :destroy
  has_and_belongs_to_many :competencies
  has_many :authentications

  validates :name, :email, :position_title, :presence => true

end
