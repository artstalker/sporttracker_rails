class Program < ActiveRecord::Base
  attr_accessible :excersice_id, :name, :user_id

  belongs_to :user
end
