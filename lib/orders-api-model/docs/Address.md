# AmzSpApi::OrdersApiModel::Address

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name. | 
**company_name** | **String** | The company name of the recipient.  **Note**: This attribute is only available for shipping address. | [optional] 
**address_line1** | **String** | The street address. | [optional] 
**address_line2** | **String** | Additional street address information, if required. | [optional] 
**address_line3** | **String** | Additional street address information, if required. | [optional] 
**city** | **String** | The city. | [optional] 
**county** | **String** | The county. | [optional] 
**district** | **String** | The district. | [optional] 
**state_or_region** | **String** | The state or region. | [optional] 
**municipality** | **String** | The municipality. | [optional] 
**postal_code** | **String** | The postal code. | [optional] 
**country_code** | **String** | The country code. A two-character country code, in ISO 3166-1 alpha-2 format. | [optional] 
**phone** | **String** | The phone number of the buyer.  **Note**:  1. This attribute is only available for shipping address. 2. The buyer &#x60;Phone&#x60; number is suppressed in some cases, including but not limited to  a. &#x60;Phone&#x60; is suppressed for all Fulfillment by Amazon (FBA) orders. b. &#x60;Phone&#x60; is suppressed for the shipped MFN(Fulfilled by the seller) order when current date is past Latest Delivery Date. | [optional] 
**extended_fields** | [**AddressExtendedFields**](AddressExtendedFields.md) |  | [optional] 
**address_type** | **String** | The address type of the shipping address. | [optional] 

