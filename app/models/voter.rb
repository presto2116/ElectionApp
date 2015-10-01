class Voter < ActiveRecord::Base
	#Validations for required fields
		validates :first_name, :last_name, :address, :city, :state, :zip, presence: true
	#validation for state code must be 2 characters i.e. DC
		validates :state, length: {is: 2 }
	#validation for zip must be a number & 5 characters long
		validates :zip, numericality: true, length: { is: 5 }
end
