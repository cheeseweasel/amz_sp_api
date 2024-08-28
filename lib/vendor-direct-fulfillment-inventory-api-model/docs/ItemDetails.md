# AmzSpApi::VendorDirectFulfillmentInventoryApiModel::ItemDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**buyer_product_identifier** | **String** | The buyer-selected product identification for the item. Either &#x60;buyerProductIdentifier&#x60; or &#x60;vendorProductIdentifier&#x60; must be submitted. | [optional] 
**vendor_product_identifier** | **String** | The vendor selected product identification for the item. Either &#x60;buyerProductIdentifier&#x60; or &#x60;vendorProductIdentifier&#x60; must be submitted. | [optional] 
**available_quantity** | [**ItemQuantity**](ItemQuantity.md) |  | 
**is_obsolete** | **BOOLEAN** | When &#x60;true&#x60;, the item is permanently unavailable. | [optional] 

