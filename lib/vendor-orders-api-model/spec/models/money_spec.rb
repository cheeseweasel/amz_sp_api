=begin
#Selling Partner API for Retail Procurement Orders

#The Selling Partner API for Retail Procurement Orders provides programmatic access to vendor orders data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorOrdersApiModel::Money
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Money' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorOrdersApiModel::Money.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Money' do
    it 'should create an instance of Money' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorOrdersApiModel::Money)
    end
  end
  describe 'test attribute "currency_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit_of_measure"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["POUNDS", "OUNCES", "GRAMS", "KILOGRAMS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.unit_of_measure = value }.not_to raise_error
      # end
    end
  end

end
