=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::FulfillmentInboundApiModel
  class ShipmentStatus
    WORKING = 'WORKING'.freeze
    SHIPPED = 'SHIPPED'.freeze
    RECEIVING = 'RECEIVING'.freeze
    CANCELLED = 'CANCELLED'.freeze
    DELETED = 'DELETED'.freeze
    CLOSED = 'CLOSED'.freeze
    ERROR = 'ERROR'.freeze
    IN_TRANSIT = 'IN_TRANSIT'.freeze
    DELIVERED = 'DELIVERED'.freeze
    CHECKED_IN = 'CHECKED_IN'.freeze

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
