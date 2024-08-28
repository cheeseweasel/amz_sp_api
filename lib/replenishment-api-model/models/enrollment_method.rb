=begin
#Selling Partner API for Replenishment

#The Selling Partner API for Replenishment (Replenishment API) provides programmatic access to replenishment program metrics and offers. These programs provide recurring delivery of any replenishable item at a frequency chosen by the customer.  The Replenishment API is available worldwide wherever Amazon Subscribe & Save is available or is supported. The API is available to vendors and FBA selling partners.

OpenAPI spec version: 2022-11-07

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::ReplenishmentApiModel
  class EnrollmentMethod
    MANUAL = 'MANUAL'.freeze
    AUTOMATIC = 'AUTOMATIC'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EnrollmentMethod.constants.select { |c| EnrollmentMethod::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EnrollmentMethod" if constantValues.empty?
      value
    end
  end
end
