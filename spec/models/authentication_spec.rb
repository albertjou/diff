# == Schema Information
#
# Table name: authentications
#
#  id           :integer          not null, primary key
#  volunteer_id :integer
#  provider     :string(255)
#  uid          :string(255)
#  index        :string(255)
#  create       :string(255)
#  destroy      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Authentication do
  pending "add some examples to (or delete) #{__FILE__}"
end
