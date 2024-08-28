=begin
#Selling Partner API for Easy Ship

#The Selling Partner API for Easy Ship helps you build applications that help sellers manage and ship Amazon Easy Ship orders.  Your Easy Ship applications can:  * Get available time slots for packages to be scheduled for delivery.  * Schedule, reschedule, and cancel Easy Ship orders.  * Print labels, invoices, and warranties.  See the [Marketplace Support Table](doc:easyship-api-v2022-03-23-use-case-guide#marketplace-support-table) for the differences in Easy Ship operations by marketplace.

OpenAPI spec version: 2022-03-23

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

# Common files
require 'easy-ship-model/api_client'
require 'easy-ship-model/api_error'
require 'easy-ship-model/version'
require 'easy-ship-model/configuration'

# Models
require 'easy-ship-model/models/amazon_order_id'
require 'easy-ship-model/models/code'
require 'easy-ship-model/models/create_scheduled_package_request'
require 'easy-ship-model/models/create_scheduled_packages_request'
require 'easy-ship-model/models/create_scheduled_packages_response'
require 'easy-ship-model/models/date_time'
require 'easy-ship-model/models/dimension'
require 'easy-ship-model/models/dimensions'
require 'easy-ship-model/models/error'
require 'easy-ship-model/models/error_list'
require 'easy-ship-model/models/handover_method'
require 'easy-ship-model/models/invoice_data'
require 'easy-ship-model/models/item'
require 'easy-ship-model/models/items'
require 'easy-ship-model/models/label_format'
require 'easy-ship-model/models/list_handover_slots_request'
require 'easy-ship-model/models/list_handover_slots_response'
require 'easy-ship-model/models/order_item_id'
require 'easy-ship-model/models/order_item_serial_number'
require 'easy-ship-model/models/order_item_serial_numbers'
require 'easy-ship-model/models/order_schedule_details'
require 'easy-ship-model/models/package'
require 'easy-ship-model/models/package_details'
require 'easy-ship-model/models/package_id'
require 'easy-ship-model/models/package_identifier'
require 'easy-ship-model/models/package_status'
require 'easy-ship-model/models/packages'
require 'easy-ship-model/models/rejected_order'
require 'easy-ship-model/models/scheduled_package_id'
require 'easy-ship-model/models/string'
require 'easy-ship-model/models/time_slot'
require 'easy-ship-model/models/time_slots'
require 'easy-ship-model/models/tracking_details'
require 'easy-ship-model/models/url'
require 'easy-ship-model/models/unit_of_length'
require 'easy-ship-model/models/unit_of_weight'
require 'easy-ship-model/models/update_package_details'
require 'easy-ship-model/models/update_package_details_list'
require 'easy-ship-model/models/update_scheduled_packages_request'
require 'easy-ship-model/models/weight'
require 'easy-ship-model/models/weight_value'

# APIs
require 'easy-ship-model/api/easy_ship_api'

module AmzSpApi::EasyShipModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::EasyShipModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
