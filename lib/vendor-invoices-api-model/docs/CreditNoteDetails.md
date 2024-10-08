# AmzSpApi::VendorInvoicesApiModel::CreditNoteDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_invoice_number** | **String** | Original invoice number when sending a credit note relating to an existing invoice. One invoice only to be processed per credit note. This is mandatory for AP credit notes. | [optional] 
**debit_note_number** | **String** | Debit note number as generated by Amazon. Recommended for returns and COOP credit notes. | [optional] 
**returns_reference_number** | **String** | Identifies the returns notice number. Mandatory for all returns credit notes. | [optional] 
**goods_return_date** | **DateTime** |  | [optional] 
**rma_id** | **String** | Identifies the Returned Merchandise Authorization ID, if generated. | [optional] 
**coop_reference_number** | **String** | Identifies the COOP reference used for COOP agreement. Failure to provide the COOP reference number or the debit note number may lead to a rejection of the credit note. | [optional] 
**consignors_reference_number** | **String** | Identifies the consignor reference number (VRET number), if generated by Amazon. | [optional] 

