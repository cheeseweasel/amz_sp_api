=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::FulfillmentInboundApiModel
  class BarcodeInstruction
    REQUIRES_FNSKU_LABEL = 'RequiresFNSKULabel'.freeze
    CAN_USE_ORIGINAL_BARCODE = 'CanUseOriginalBarcode'.freeze
    MUST_PROVIDE_SELLER_SKU = 'MustProvideSellerSKU'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = BarcodeInstruction.constants.select { |c| BarcodeInstruction::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #BarcodeInstruction" if constantValues.empty?
      value
    end
  end
end
