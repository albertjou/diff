# == Schema Information
#
# Table name: tasks
#
#  id              :integer          not null, primary key
#  charity_id      :string(255)
#  description     :text
#  category        :string(255)
#  confidentiality :boolean
#  non_profit_id   :integer
#  sponsor_id      :integer
#  volunteer_size  :integer
#  status          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'
