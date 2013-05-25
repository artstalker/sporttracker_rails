class BodyStat < ActiveRecord::Base
  attr_accessible :Biceps, :Date, :Height, :Waist, :Weight
  belongs_to :user

  validates :user_id, presence: true
end
