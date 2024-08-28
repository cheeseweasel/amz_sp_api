=begin
#Selling Partner API for Product Type Definitions

#The Selling Partner API for Product Type Definitions provides programmatic access to attribute and data requirements for product types in the Amazon catalog. Use this API to return the JSON Schema for a product type that you can then use with other Selling Partner APIs, such as the Selling Partner API for Listings Items, the Selling Partner API for Catalog Items, and the Selling Partner API for Feeds (for JSON-based listing feeds).  For more information, see the [Product Type Definitions API Use Case Guide](doc:product-type-api-use-case-guide).

OpenAPI spec version: 2020-09-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ProductTypeDefinitionsApiModel::SchemaLinkLink
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SchemaLinkLink' do
  before do
    # run before each test
    @instance = AmzSpApi::ProductTypeDefinitionsApiModel::SchemaLinkLink.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SchemaLinkLink' do
    it 'should create an instance of SchemaLinkLink' do
      expect(@instance).to be_instance_of(AmzSpApi::ProductTypeDefinitionsApiModel::SchemaLinkLink)
    end
  end
  describe 'test attribute "resource"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "verb"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["GET"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.verb = value }.not_to raise_error
      # end
    end
  end

end
