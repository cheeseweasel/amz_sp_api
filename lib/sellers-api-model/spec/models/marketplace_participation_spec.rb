=begin
#Selling Partner API for Sellers

#The [Selling Partner API for Sellers](https://developer-docs.amazon.com/sp-api/docs/sellers-api-v1-reference) (Sellers API) provides essential information about seller accounts, such as:  - The marketplaces a seller can list in - The default language and currency of a marketplace - Whether the seller has suspended listings  Refer to the [Sellers API reference](https://developer-docs.amazon.com/sp-api/docs/sellers-api-v1-reference) for details about this API's operations, data types, and schemas.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::SellersApiModel::MarketplaceParticipation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MarketplaceParticipation' do
  before do
    # run before each test
    @instance = AmzSpApi::SellersApiModel::MarketplaceParticipation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MarketplaceParticipation' do
    it 'should create an instance of MarketplaceParticipation' do
      expect(@instance).to be_instance_of(AmzSpApi::SellersApiModel::MarketplaceParticipation)
    end
  end
  describe 'test attribute "marketplace"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "participation"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
