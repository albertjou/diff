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

require 'spec_helper'

describe Volunteer do
  it { should belong_to :company}
  it { should have_and_belong_to_many :tasks}
  it { should have_and_belong_to_many :competencies}
  it { should have_many(:bookmarks).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:position_title) }

  describe "A valid volunteer" do
    subject do
      volunteer = Volunteer.new(:name => 'John Smith',
        :email => 'abc@example.com',
        :position_title => 'Chief blabbermouth',
        :mobile => '0400123456',
        :password => 'Ineedtochangethis',
        :password_confirmation => 'Ineedtochangethis')
    end

    its(:name) { should == 'John Smith' }
    its(:email) { should == 'abc@example.com' }
    its(:position_title) { should == "Chief blabbermouth" }
    its(:mobile) { should == '0400123456' }

  end

end
