class Muscle < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :excercises, dependent: :destroy
end
