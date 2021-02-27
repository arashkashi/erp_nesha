class UserRolesValidator < ActiveModel::Validator
 	def validate(record)

 		# Set the default values
 		record.roles = "{}" if record.roles.nil?
 		record.enabled = false if record.enabled.nil?
 		record.is_admin = false if record.is_admin.nil?

 		# Check for proper JSON
 		JSON.parse(record.roles)
  		rescue JSON::ParserError => e
    	record.errors.add :roles, "Not valid JSON string"
  	end
end


class User < ApplicationRecord
  has_secure_password

  validates_with UserRolesValidator
  validates :email, presence: true, uniqueness: true
end
