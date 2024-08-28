=begin
#Selling Partner API for Replenishment

#The Selling Partner API for Replenishment (Replenishment API) provides programmatic access to replenishment program metrics and offers. These programs provide recurring delivery of any replenishable item at a frequency chosen by the customer.  The Replenishment API is available worldwide wherever Amazon Subscribe & Save is available or is supported. The API is available to vendors and FBA selling partners.

OpenAPI spec version: 2022-11-07

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::ReplenishmentApiModel
  # An object which contains metric data for a selling partner.
  class GetSellingPartnerMetricsResponseMetric
    # The percentage of items that were not shipped out of the total shipped units over a period of time due to being out of stock. Applicable only for the `PERFORMANCE` `timePeriodType`.
    attr_accessor :not_delivered_due_to_oos

    # The revenue generated from subscriptions over a period of time. Applicable for both the `PERFORMANCE` and `FORECAST` `timePeriodType`.
    attr_accessor :total_subscriptions_revenue

    # The number of units shipped to the subscribers over a period of time. Applicable for both the `PERFORMANCE` and `FORECAST` `timePeriodType`.
    attr_accessor :shipped_subscription_units

    # The number of active subscriptions present at the end of the period. Applicable only for the `PERFORMANCE` `timePeriodType`.
    attr_accessor :active_subscriptions

    # The average revenue per subscriber of the program over a period of past 12 months for sellers and 6 months for vendors. Applicable only for the `PERFORMANCE` `timePeriodType`.
    attr_accessor :subscriber_average_revenue

    # The average revenue per non-subscriber of the program over a period of past 12 months for sellers and 6 months for vendors. Applicable only for the `PERFORMANCE` `timePeriodType`.
    attr_accessor :non_subscriber_average_revenue

    # The revenue that would have been generated had there not been out of stock. Applicable only for the PERFORMANCE timePeriodType.
    attr_accessor :lost_revenue_due_to_oos

    # The average reorders per subscriber of the program over a period of 12 months. Applicable only for the PERFORMANCE timePeriodType.
    attr_accessor :subscriber_average_reorders

    # The average reorders per non-subscriber of the program over a period of past 12 months. Applicable only for the PERFORMANCE timePeriodType.
    attr_accessor :non_subscriber_average_reorders

    # The percentage of revenue from ASINs with coupons out of total revenue from all ASINs. Applicable only for the PERFORMANCE timePeriodType.
    attr_accessor :coupons_revenue_penetration

    attr_accessor :time_interval

    # The currency code in ISO 4217 format.
    attr_accessor :currency_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'not_delivered_due_to_oos' => :'notDeliveredDueToOOS',
        :'total_subscriptions_revenue' => :'totalSubscriptionsRevenue',
        :'shipped_subscription_units' => :'shippedSubscriptionUnits',
        :'active_subscriptions' => :'activeSubscriptions',
        :'subscriber_average_revenue' => :'subscriberAverageRevenue',
        :'non_subscriber_average_revenue' => :'nonSubscriberAverageRevenue',
        :'lost_revenue_due_to_oos' => :'lostRevenueDueToOOS',
        :'subscriber_average_reorders' => :'subscriberAverageReorders',
        :'non_subscriber_average_reorders' => :'nonSubscriberAverageReorders',
        :'coupons_revenue_penetration' => :'couponsRevenuePenetration',
        :'time_interval' => :'timeInterval',
        :'currency_code' => :'currencyCode'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'not_delivered_due_to_oos' => :'Object',
        :'total_subscriptions_revenue' => :'Object',
        :'shipped_subscription_units' => :'Object',
        :'active_subscriptions' => :'Object',
        :'subscriber_average_revenue' => :'Object',
        :'non_subscriber_average_revenue' => :'Object',
        :'lost_revenue_due_to_oos' => :'Object',
        :'subscriber_average_reorders' => :'Object',
        :'non_subscriber_average_reorders' => :'Object',
        :'coupons_revenue_penetration' => :'Object',
        :'time_interval' => :'Object',
        :'currency_code' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::ReplenishmentApiModel::GetSellingPartnerMetricsResponseMetric` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::ReplenishmentApiModel::GetSellingPartnerMetricsResponseMetric`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'not_delivered_due_to_oos')
        self.not_delivered_due_to_oos = attributes[:'not_delivered_due_to_oos']
      end

      if attributes.key?(:'total_subscriptions_revenue')
        self.total_subscriptions_revenue = attributes[:'total_subscriptions_revenue']
      end

      if attributes.key?(:'shipped_subscription_units')
        self.shipped_subscription_units = attributes[:'shipped_subscription_units']
      end

      if attributes.key?(:'active_subscriptions')
        self.active_subscriptions = attributes[:'active_subscriptions']
      end

      if attributes.key?(:'subscriber_average_revenue')
        self.subscriber_average_revenue = attributes[:'subscriber_average_revenue']
      end

      if attributes.key?(:'non_subscriber_average_revenue')
        self.non_subscriber_average_revenue = attributes[:'non_subscriber_average_revenue']
      end

      if attributes.key?(:'lost_revenue_due_to_oos')
        self.lost_revenue_due_to_oos = attributes[:'lost_revenue_due_to_oos']
      end

      if attributes.key?(:'subscriber_average_reorders')
        self.subscriber_average_reorders = attributes[:'subscriber_average_reorders']
      end

      if attributes.key?(:'non_subscriber_average_reorders')
        self.non_subscriber_average_reorders = attributes[:'non_subscriber_average_reorders']
      end

      if attributes.key?(:'coupons_revenue_penetration')
        self.coupons_revenue_penetration = attributes[:'coupons_revenue_penetration']
      end

      if attributes.key?(:'time_interval')
        self.time_interval = attributes[:'time_interval']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          not_delivered_due_to_oos == o.not_delivered_due_to_oos &&
          total_subscriptions_revenue == o.total_subscriptions_revenue &&
          shipped_subscription_units == o.shipped_subscription_units &&
          active_subscriptions == o.active_subscriptions &&
          subscriber_average_revenue == o.subscriber_average_revenue &&
          non_subscriber_average_revenue == o.non_subscriber_average_revenue &&
          lost_revenue_due_to_oos == o.lost_revenue_due_to_oos &&
          subscriber_average_reorders == o.subscriber_average_reorders &&
          non_subscriber_average_reorders == o.non_subscriber_average_reorders &&
          coupons_revenue_penetration == o.coupons_revenue_penetration &&
          time_interval == o.time_interval &&
          currency_code == o.currency_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [not_delivered_due_to_oos, total_subscriptions_revenue, shipped_subscription_units, active_subscriptions, subscriber_average_revenue, non_subscriber_average_revenue, lost_revenue_due_to_oos, subscriber_average_reorders, non_subscriber_average_reorders, coupons_revenue_penetration, time_interval, currency_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        AmzSpApi::ReplenishmentApiModel.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
