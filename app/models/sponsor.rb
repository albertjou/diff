# == Schema Information
#
# Table name: sponsors
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  mobile                 :string(255)
#  non_profit_id          :integer
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

class Sponsor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :linkedIn_profile, :mobile, :name, :non_profit_id, :position_title, :profile_picture

  belongs_to :non_profit
  has_many :tasks

end
