# AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::VendorDFSandboxtransactionstatusApi

All URIs are relative to *https://sandbox.sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_order_scenarios**](VendorDFSandboxtransactionstatusApi.md#get_order_scenarios) | **GET** /vendor/directFulfillment/sandbox/2021-10-28/transactions/{transactionId} | 

# **get_order_scenarios**
> TransactionStatus get_order_scenarios(transaction_id)



Retrieves the transaction status identified by the specified `transactionId`, and returns the requested test order data if the transaction is successful.

### Example
```ruby
# load the gem
require 'vendor-direct-fulfillment-sandbox-test-data-api-model'

api_instance = AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::VendorDFSandboxtransactionstatusApi.new
transaction_id = 'transaction_id_example' # String | The transaction identifier returned in the response for the `generateOrderScenarios` operation.


begin
  result = api_instance.get_order_scenarios(transaction_id)
  p result
rescue AmzSpApi::VendorDirectFulfillmentSandboxTestDataApiModel::ApiError => e
  puts "Exception when calling VendorDFSandboxtransactionstatusApi->get_order_scenarios: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**| The transaction identifier returned in the response for the &#x60;generateOrderScenarios&#x60; operation. | 

### Return type

[**TransactionStatus**](TransactionStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



