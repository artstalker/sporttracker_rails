class Program < ActiveRecord::Base
  attr_accessible :excersice_id, :name, :user_id

  belongs_to :user

  has_many :program_to_excercises, dependent: :destroy
  has_many :excersices, through: :program_to_excercises
end
