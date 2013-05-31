class Excercise < ActiveRecord::Base
  attr_accessible :complexity, :description, :gif_url, :muscle_id, :name

  belongs_to :muscle

  has_many :program_to_excercises, dependent: :destroy
  has_many :excersices, through: :program_to_excercises
end
