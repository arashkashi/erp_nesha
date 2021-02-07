class CustomerMetaValidator < ActiveModel::Validator
 	def validate(record)
 		JSON.parse(record.meta)
  		rescue JSON::ParserError => e
    	record.errors.add :meta, "Not valid JSON string"
  	end
end

class Customer < ApplicationRecord
  belongs_to :user

  validates_with CustomerMetaValidator
end
