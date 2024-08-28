=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'date'

module AmzSpApi::FinancesApiModel
  # Failed ad hoc disbursement event list.
  class FailedAdhocDisbursementEvent
    # The type of fund transfer.   Example \"Refund\"
    attr_accessor :funds_transfers_type

    # The transfer identifier.
    attr_accessor :transfer_id

    # The disbursement identifier.
    attr_accessor :disbursement_id

    # The type of payment for disbursement.   Example `CREDIT_CARD`
    attr_accessor :payment_disbursement_type

    # The status of the failed `AdhocDisbursement`.   Example `HARD_DECLINED`
    attr_accessor :status

    attr_accessor :transfer_amount

    attr_accessor :posted_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'funds_transfers_type' => :'FundsTransfersType',
        :'transfer_id' => :'TransferId',
        :'disbursement_id' => :'DisbursementId',
        :'payment_disbursement_type' => :'PaymentDisbursementType',
        :'status' => :'Status',
        :'transfer_amount' => :'TransferAmount',
        :'posted_date' => :'PostedDate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'funds_transfers_type' => :'Object',
        :'transfer_id' => :'Object',
        :'disbursement_id' => :'Object',
        :'payment_disbursement_type' => :'Object',
        :'status' => :'Object',
        :'transfer_amount' => :'Object',
        :'posted_date' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::FinancesApiModel::FailedAdhocDisbursementEvent` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::FinancesApiModel::FailedAdhocDisbursementEvent`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'funds_transfers_type')
        self.funds_transfers_type = attributes[:'funds_transfers_type']
      end

      if attributes.key?(:'transfer_id')
        self.transfer_id = attributes[:'transfer_id']
      end

      if attributes.key?(:'disbursement_id')
        self.disbursement_id = attributes[:'disbursement_id']
      end

      if attributes.key?(:'payment_disbursement_type')
        self.payment_disbursement_type = attributes[:'payment_disbursement_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'transfer_amount')
        self.transfer_amount = attributes[:'transfer_amount']
      end

      if attributes.key?(:'posted_date')
        self.posted_date = attributes[:'posted_date']
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
          funds_transfers_type == o.funds_transfers_type &&
          transfer_id == o.transfer_id &&
          disbursement_id == o.disbursement_id &&
          payment_disbursement_type == o.payment_disbursement_type &&
          status == o.status &&
          transfer_amount == o.transfer_amount &&
          posted_date == o.posted_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [funds_transfers_type, transfer_id, disbursement_id, payment_disbursement_type, status, transfer_amount, posted_date].hash
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
        AmzSpApi::FinancesApiModel.const_get(type).build_from_hash(value)
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
