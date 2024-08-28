=begin
#Selling Partner API for Shipment Invoicing

#The Selling Partner API for Shipment Invoicing helps you programmatically retrieve shipment invoice information in the Brazil marketplace for a selling partner’s Fulfillment by Amazon (FBA) orders.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::ShipmentInvoicingApiModel
  class AddressTypeEnum
    RESIDENTIAL = 'Residential'.freeze
    COMMERCIAL = 'Commercial'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AddressTypeEnum.constants.select { |c| AddressTypeEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AddressTypeEnum" if constantValues.empty?
      value
    end
  end
end
