class Task < ActiveRecord::Base
  attr_accessible :category, :charity_id, :confidentiality, :description, :non_profit_id, :sponsor_id, :volunteer_size, :status
end
