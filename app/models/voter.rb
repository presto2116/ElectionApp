class Voter < ActiveRecord::Base
	#Validations for required fields
		validates :first_name, :last_name, :address, :city, :state, :zip, presence: true
	#validation for no spaces in first and last name
		validates :first_name, :last_name, format: { without: /\s/, message: ": No Spaces allowed"}
	#validation for state code must be 2 characters i.e. DC
		validates :state, length: {is: 2, message: ": Use abbreviation ie. DC" }
	#validation for zip must be a number & 5 characters long
		validates :zip, numericality: true, length: { is: 5, message: ": Zip Code must be 5 numbers" }
end
