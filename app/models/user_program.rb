class UserProgram < ActiveRecord::Base
  attr_accessible :program_id, :shift, :start_date, :state, :user_id

  belongs_to :user
end
