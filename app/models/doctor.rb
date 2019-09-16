class Doctor < ActiveRecord::Base
  #this create methods
  has_many :appointments
  has_many :patients, through: :appointments
end
