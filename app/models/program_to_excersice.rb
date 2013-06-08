class ProgramToExcersice < ActiveRecord::Base
  attr_accessible :excersice_id, :program_id

  belongs_to :excersice
  belongs_to :program
end
