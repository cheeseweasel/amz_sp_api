=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools. The Orders API supports orders that are two years old or less. Orders more than two years old will not show in the API response.  **Note:** The Orders API supports orders from 2016 and after for the JP, AU, and SG marketplaces.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::OrdersApiModel
  class ShipmentStatus
    READY_FOR_PICKUP = 'ReadyForPickup'.freeze
    PICKED_UP = 'PickedUp'.freeze
    REFUSED_PICKUP = 'RefusedPickup'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ShipmentStatus.constants.select { |c| ShipmentStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ShipmentStatus" if constantValues.empty?
      value
    end
  end
end
