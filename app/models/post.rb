class Post < ActiveRecord::Base
  attr_accessible :date, :mesage, :user_id

  belongs_to :user
end
