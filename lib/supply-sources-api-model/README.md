# supply-sources-api-model

AmzSpApi::SupplySourcesApiModel - the Ruby gem for the Selling Partner API for Supply Sources

Manage configurations and capabilities of seller supply sources.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2020-07-01
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build supply-sources-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./supply-sources-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./supply-sources-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'supply-sources-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'supply-sources-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'supply-sources-api-model'

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identifier of a supply source.


begin
  result = api_instance.archive_supply_source(supply_source_id)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->archive_supply_source: #{e}"
end

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
body = AmzSpApi::SupplySourcesApiModel::CreateSupplySourceRequest.new # CreateSupplySourceRequest | A request to create a supply source.


begin
  result = api_instance.create_supply_source(body)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->create_supply_source: #{e}"
end

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identifier of a supply source.


begin
  result = api_instance.get_supply_source(supply_source_id)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->get_supply_source: #{e}"
end

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
opts = { 
  next_page_token: 'next_page_token_example', # String | The pagination token to retrieve a specific page of results.
  page_size: AmzSpApi::SupplySourcesApiModel::BigDecimal.new # BigDecimal | The number of supply sources to return per paginated request.
}

begin
  result = api_instance.get_supply_sources(opts)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->get_supply_sources: #{e}"
end

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identitier of a supply source.
opts = { 
  body: AmzSpApi::SupplySourcesApiModel::UpdateSupplySourceRequest.new # UpdateSupplySourceRequest | 
}

begin
  result = api_instance.update_supply_source(supply_source_id, opts)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->update_supply_source: #{e}"
end

api_instance = AmzSpApi::SupplySourcesApiModel::SupplySourcesApi.new
supply_source_id = 'supply_source_id_example' # String | The unique identifier of a supply source.
opts = { 
  body: AmzSpApi::SupplySourcesApiModel::UpdateSupplySourceStatusRequest.new # UpdateSupplySourceStatusRequest | 
}

begin
  result = api_instance.update_supply_source_status(supply_source_id, opts)
  p result
rescue AmzSpApi::SupplySourcesApiModel::ApiError => e
  puts "Exception when calling SupplySourcesApi->update_supply_source_status: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::SupplySourcesApiModel::SupplySourcesApi* | [**archive_supply_source**](docs/SupplySourcesApi.md#archive_supply_source) | **DELETE** /supplySources/2020-07-01/supplySources/{supplySourceId} | 
*AmzSpApi::SupplySourcesApiModel::SupplySourcesApi* | [**create_supply_source**](docs/SupplySourcesApi.md#create_supply_source) | **POST** /supplySources/2020-07-01/supplySources | 
*AmzSpApi::SupplySourcesApiModel::SupplySourcesApi* | [**get_supply_source**](docs/SupplySourcesApi.md#get_supply_source) | **GET** /supplySources/2020-07-01/supplySources/{supplySourceId} | 
*AmzSpApi::SupplySourcesApiModel::SupplySourcesApi* | [**get_supply_sources**](docs/SupplySourcesApi.md#get_supply_sources) | **GET** /supplySources/2020-07-01/supplySources | 
*AmzSpApi::SupplySourcesApiModel::SupplySourcesApi* | [**update_supply_source**](docs/SupplySourcesApi.md#update_supply_source) | **PUT** /supplySources/2020-07-01/supplySources/{supplySourceId} | 
*AmzSpApi::SupplySourcesApiModel::SupplySourcesApi* | [**update_supply_source_status**](docs/SupplySourcesApi.md#update_supply_source_status) | **PUT** /supplySources/2020-07-01/supplySources/{supplySourceId}/status | 

## Documentation for Models

 - [AmzSpApi::SupplySourcesApiModel::Address](docs/Address.md)
 - [AmzSpApi::SupplySourcesApiModel::AddressWithContact](docs/AddressWithContact.md)
 - [AmzSpApi::SupplySourcesApiModel::ContactDetails](docs/ContactDetails.md)
 - [AmzSpApi::SupplySourcesApiModel::ContactDetailsPrimary](docs/ContactDetailsPrimary.md)
 - [AmzSpApi::SupplySourcesApiModel::CreateSupplySourceRequest](docs/CreateSupplySourceRequest.md)
 - [AmzSpApi::SupplySourcesApiModel::CreateSupplySourceResponse](docs/CreateSupplySourceResponse.md)
 - [AmzSpApi::SupplySourcesApiModel::CurbsidePickupConfiguration](docs/CurbsidePickupConfiguration.md)
 - [AmzSpApi::SupplySourcesApiModel::DateTime](docs/DateTime.md)
 - [AmzSpApi::SupplySourcesApiModel::DeliveryChannel](docs/DeliveryChannel.md)
 - [AmzSpApi::SupplySourcesApiModel::Duration](docs/Duration.md)
 - [AmzSpApi::SupplySourcesApiModel::EmailAddress](docs/EmailAddress.md)
 - [AmzSpApi::SupplySourcesApiModel::Error](docs/Error.md)
 - [AmzSpApi::SupplySourcesApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::SupplySourcesApiModel::GetSupplySourcesResponse](docs/GetSupplySourcesResponse.md)
 - [AmzSpApi::SupplySourcesApiModel::InStorePickupConfiguration](docs/InStorePickupConfiguration.md)
 - [AmzSpApi::SupplySourcesApiModel::NonNegativeInteger](docs/NonNegativeInteger.md)
 - [AmzSpApi::SupplySourcesApiModel::OperatingHour](docs/OperatingHour.md)
 - [AmzSpApi::SupplySourcesApiModel::OperatingHours](docs/OperatingHours.md)
 - [AmzSpApi::SupplySourcesApiModel::OperatingHoursByDay](docs/OperatingHoursByDay.md)
 - [AmzSpApi::SupplySourcesApiModel::OperationalConfiguration](docs/OperationalConfiguration.md)
 - [AmzSpApi::SupplySourcesApiModel::OutboundCapability](docs/OutboundCapability.md)
 - [AmzSpApi::SupplySourcesApiModel::ParkingConfiguration](docs/ParkingConfiguration.md)
 - [AmzSpApi::SupplySourcesApiModel::ParkingCostType](docs/ParkingCostType.md)
 - [AmzSpApi::SupplySourcesApiModel::ParkingSpotIdentificationType](docs/ParkingSpotIdentificationType.md)
 - [AmzSpApi::SupplySourcesApiModel::ParkingWithAddressConfiguration](docs/ParkingWithAddressConfiguration.md)
 - [AmzSpApi::SupplySourcesApiModel::PickupChannel](docs/PickupChannel.md)
 - [AmzSpApi::SupplySourcesApiModel::ReturnLocation](docs/ReturnLocation.md)
 - [AmzSpApi::SupplySourcesApiModel::ServicesCapability](docs/ServicesCapability.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySource](docs/SupplySource.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceAlias](docs/SupplySourceAlias.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceCapabilities](docs/SupplySourceCapabilities.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceCode](docs/SupplySourceCode.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceConfiguration](docs/SupplySourceConfiguration.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceId](docs/SupplySourceId.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceList](docs/SupplySourceList.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceListInner](docs/SupplySourceListInner.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceStatus](docs/SupplySourceStatus.md)
 - [AmzSpApi::SupplySourcesApiModel::SupplySourceStatusReadOnly](docs/SupplySourceStatusReadOnly.md)
 - [AmzSpApi::SupplySourcesApiModel::ThroughputCap](docs/ThroughputCap.md)
 - [AmzSpApi::SupplySourcesApiModel::ThroughputConfig](docs/ThroughputConfig.md)
 - [AmzSpApi::SupplySourcesApiModel::ThroughputUnit](docs/ThroughputUnit.md)
 - [AmzSpApi::SupplySourcesApiModel::TimeUnit](docs/TimeUnit.md)
 - [AmzSpApi::SupplySourcesApiModel::UpdateSupplySourceRequest](docs/UpdateSupplySourceRequest.md)
 - [AmzSpApi::SupplySourcesApiModel::UpdateSupplySourceStatusRequest](docs/UpdateSupplySourceStatusRequest.md)

## Documentation for Authorization

 All endpoints do not require authorization.

