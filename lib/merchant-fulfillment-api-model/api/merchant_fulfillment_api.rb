=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

module AmzSpApi::MerchantFulfillmentApiModel
  class MerchantFulfillmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel the shipment indicated by the specified shipment identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param shipment_id The Amazon-defined shipment identifier for the shipment to cancel.
    # @param [Hash] opts the optional parameters
    # @return [CancelShipmentResponse]
    def cancel_shipment(shipment_id, opts = {})
      data, _status_code, _headers = cancel_shipment_with_http_info(shipment_id, opts)
      data
    end

    # Cancel the shipment indicated by the specified shipment identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param shipment_id The Amazon-defined shipment identifier for the shipment to cancel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CancelShipmentResponse, Integer, Hash)>] CancelShipmentResponse data, response status code and response headers
    def cancel_shipment_with_http_info(shipment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantFulfillmentApi.cancel_shipment ...'
      end
      # verify the required parameter 'shipment_id' is set
      if @api_client.config.client_side_validation && shipment_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_id' when calling MerchantFulfillmentApi.cancel_shipment"
      end
      # resource path
      local_var_path = '/mfn/v0/shipments/{shipmentId}'.sub('{' + 'shipmentId' + '}', shipment_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CancelShipmentResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantFulfillmentApi#cancel_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a shipment with the information provided.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Request schema for CreateShipment operation.
    # @param [Hash] opts the optional parameters
    # @return [CreateShipmentResponse]
    def create_shipment(body, opts = {})
      data, _status_code, _headers = create_shipment_with_http_info(body, opts)
      data
    end

    # Create a shipment with the information provided.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Request schema for CreateShipment operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateShipmentResponse, Integer, Hash)>] CreateShipmentResponse data, response status code and response headers
    def create_shipment_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantFulfillmentApi.create_shipment ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MerchantFulfillmentApi.create_shipment"
      end
      # resource path
      local_var_path = '/mfn/v0/shipments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CreateShipmentResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantFulfillmentApi#create_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets a list of additional seller inputs required for a ship method. This is generally used for international shipping.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Request schema for GetAdditionalSellerInputs operation.
    # @param [Hash] opts the optional parameters
    # @return [GetAdditionalSellerInputsResponse]
    def get_additional_seller_inputs(body, opts = {})
      data, _status_code, _headers = get_additional_seller_inputs_with_http_info(body, opts)
      data
    end

    # Gets a list of additional seller inputs required for a ship method. This is generally used for international shipping.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Request schema for GetAdditionalSellerInputs operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAdditionalSellerInputsResponse, Integer, Hash)>] GetAdditionalSellerInputsResponse data, response status code and response headers
    def get_additional_seller_inputs_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantFulfillmentApi.get_additional_seller_inputs ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MerchantFulfillmentApi.get_additional_seller_inputs"
      end
      # resource path
      local_var_path = '/mfn/v0/additionalSellerInputs'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'GetAdditionalSellerInputsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantFulfillmentApi#get_additional_seller_inputs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of shipping service offers that satisfy the specified shipment request details.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Request schema for GetEligibleShipmentServices operation.
    # @param [Hash] opts the optional parameters
    # @return [GetEligibleShipmentServicesResponse]
    def get_eligible_shipment_services(body, opts = {})
      data, _status_code, _headers = get_eligible_shipment_services_with_http_info(body, opts)
      data
    end

    # Returns a list of shipping service offers that satisfy the specified shipment request details.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 10 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param body Request schema for GetEligibleShipmentServices operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetEligibleShipmentServicesResponse, Integer, Hash)>] GetEligibleShipmentServicesResponse data, response status code and response headers
    def get_eligible_shipment_services_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantFulfillmentApi.get_eligible_shipment_services ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MerchantFulfillmentApi.get_eligible_shipment_services"
      end
      # resource path
      local_var_path = '/mfn/v0/eligibleShippingServices'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'GetEligibleShipmentServicesResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantFulfillmentApi#get_eligible_shipment_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the shipment information for an existing shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param shipment_id The Amazon-defined shipment identifier for the shipment.
    # @param [Hash] opts the optional parameters
    # @return [GetShipmentResponse]
    def get_shipment(shipment_id, opts = {})
      data, _status_code, _headers = get_shipment_with_http_info(shipment_id, opts)
      data
    end

    # Returns the shipment information for an existing shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param shipment_id The Amazon-defined shipment identifier for the shipment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetShipmentResponse, Integer, Hash)>] GetShipmentResponse data, response status code and response headers
    def get_shipment_with_http_info(shipment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantFulfillmentApi.get_shipment ...'
      end
      # verify the required parameter 'shipment_id' is set
      if @api_client.config.client_side_validation && shipment_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipment_id' when calling MerchantFulfillmentApi.get_shipment"
      end
      # resource path
      local_var_path = '/mfn/v0/shipments/{shipmentId}'.sub('{' + 'shipmentId' + '}', shipment_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetShipmentResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantFulfillmentApi#get_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
