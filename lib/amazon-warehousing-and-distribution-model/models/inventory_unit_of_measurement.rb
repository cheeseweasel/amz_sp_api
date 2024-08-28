=begin
#The Selling Partner API for Amazon Warehousing and Distribution

#The Selling Partner API for Amazon Warehousing and Distribution (AWD) provides programmatic access to information about AWD shipments and inventory. 

OpenAPI spec version: 2024-05-09

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::AmazonWarehousingAndDistributionModel
  class InventoryUnitOfMeasurement
    PRODUCT_UNITS = 'PRODUCT_UNITS'.freeze
    CASES = 'CASES'.freeze
    PALLETS = 'PALLETS'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = InventoryUnitOfMeasurement.constants.select { |c| InventoryUnitOfMeasurement::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #InventoryUnitOfMeasurement" if constantValues.empty?
      value
    end
  end
end
