=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::VendorDirectFulfillmentOrdersApiModel
  # Details of an order.
  class OrderDetails
    # The customer order number.
    attr_accessor :customer_order_number

    # The date the order was placed. This field is expected to be in ISO-8601 date/time format, for example:2018-07-16T23:00:00Z/ 2018-07-16T23:00:00-05:00 /2018-07-16T23:00:00-08:00. If no time zone is specified, UTC should be assumed.
    attr_accessor :order_date

    # Current status of the order.
    attr_accessor :order_status

    attr_accessor :shipment_details

    attr_accessor :tax_total

    attr_accessor :selling_party

    attr_accessor :ship_from_party

    attr_accessor :ship_to_party

    attr_accessor :bill_to_party

    # A list of items in this purchase order.
    attr_accessor :items

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customer_order_number' => :'customerOrderNumber',
        :'order_date' => :'orderDate',
        :'order_status' => :'orderStatus',
        :'shipment_details' => :'shipmentDetails',
        :'tax_total' => :'taxTotal',
        :'selling_party' => :'sellingParty',
        :'ship_from_party' => :'shipFromParty',
        :'ship_to_party' => :'shipToParty',
        :'bill_to_party' => :'billToParty',
        :'items' => :'items'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'customer_order_number' => :'Object',
        :'order_date' => :'Object',
        :'order_status' => :'Object',
        :'shipment_details' => :'Object',
        :'tax_total' => :'Object',
        :'selling_party' => :'Object',
        :'ship_from_party' => :'Object',
        :'ship_to_party' => :'Object',
        :'bill_to_party' => :'Object',
        :'items' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::VendorDirectFulfillmentOrdersApiModel::OrderDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'customer_order_number')
        self.customer_order_number = attributes[:'customer_order_number']
      end

      if attributes.key?(:'order_date')
        self.order_date = attributes[:'order_date']
      end

      if attributes.key?(:'order_status')
        self.order_status = attributes[:'order_status']
      end

      if attributes.key?(:'shipment_details')
        self.shipment_details = attributes[:'shipment_details']
      end

      if attributes.key?(:'tax_total')
        self.tax_total = attributes[:'tax_total']
      end

      if attributes.key?(:'selling_party')
        self.selling_party = attributes[:'selling_party']
      end

      if attributes.key?(:'ship_from_party')
        self.ship_from_party = attributes[:'ship_from_party']
      end

      if attributes.key?(:'ship_to_party')
        self.ship_to_party = attributes[:'ship_to_party']
      end

      if attributes.key?(:'bill_to_party')
        self.bill_to_party = attributes[:'bill_to_party']
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @customer_order_number.nil?
        invalid_properties.push('invalid value for "customer_order_number", customer_order_number cannot be nil.')
      end

      if @order_date.nil?
        invalid_properties.push('invalid value for "order_date", order_date cannot be nil.')
      end

      if @shipment_details.nil?
        invalid_properties.push('invalid value for "shipment_details", shipment_details cannot be nil.')
      end

      if @selling_party.nil?
        invalid_properties.push('invalid value for "selling_party", selling_party cannot be nil.')
      end

      if @ship_from_party.nil?
        invalid_properties.push('invalid value for "ship_from_party", ship_from_party cannot be nil.')
      end

      if @ship_to_party.nil?
        invalid_properties.push('invalid value for "ship_to_party", ship_to_party cannot be nil.')
      end

      if @bill_to_party.nil?
        invalid_properties.push('invalid value for "bill_to_party", bill_to_party cannot be nil.')
      end

      if @items.nil?
        invalid_properties.push('invalid value for "items", items cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @customer_order_number.nil?
      return false if @order_date.nil?
      order_status_validator = EnumAttributeValidator.new('Object', ['NEW', 'SHIPPED', 'ACCEPTED', 'CANCELLED'])
      return false unless order_status_validator.valid?(@order_status)
      return false if @shipment_details.nil?
      return false if @selling_party.nil?
      return false if @ship_from_party.nil?
      return false if @ship_to_party.nil?
      return false if @bill_to_party.nil?
      return false if @items.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order_status Object to be assigned
    def order_status=(order_status)
      validator = EnumAttributeValidator.new('Object', ['NEW', 'SHIPPED', 'ACCEPTED', 'CANCELLED'])
      unless validator.valid?(order_status)
        fail ArgumentError, "invalid value for \"order_status\", must be one of #{validator.allowable_values}."
      end
      @order_status = order_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          customer_order_number == o.customer_order_number &&
          order_date == o.order_date &&
          order_status == o.order_status &&
          shipment_details == o.shipment_details &&
          tax_total == o.tax_total &&
          selling_party == o.selling_party &&
          ship_from_party == o.ship_from_party &&
          ship_to_party == o.ship_to_party &&
          bill_to_party == o.bill_to_party &&
          items == o.items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [customer_order_number, order_date, order_status, shipment_details, tax_total, selling_party, ship_from_party, ship_to_party, bill_to_party, items].hash
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
        AmzSpApi::VendorDirectFulfillmentOrdersApiModel.const_get(type).build_from_hash(value)
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
