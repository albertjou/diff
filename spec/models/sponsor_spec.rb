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
#

require 'spec_helper'

describe Sponsor do
  it { should belong_to :non_profit}
  it { should have_many :tasks }
end
