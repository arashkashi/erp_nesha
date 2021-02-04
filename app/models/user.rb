class UserRolesValidator < ActiveModel::Validator
 	def validate(record)
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
