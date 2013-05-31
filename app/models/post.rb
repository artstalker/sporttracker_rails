class Post < ActiveRecord::Base
  attr_accessible :date, :message, :user_id

  belongs_to :user
end
