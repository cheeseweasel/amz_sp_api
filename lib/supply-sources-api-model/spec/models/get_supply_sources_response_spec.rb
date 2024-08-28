=begin
#Selling Partner API for Supply Sources

#Manage configurations and capabilities of seller supply sources.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::SupplySourcesApiModel::GetSupplySourcesResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetSupplySourcesResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::SupplySourcesApiModel::GetSupplySourcesResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetSupplySourcesResponse' do
    it 'should create an instance of GetSupplySourcesResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::SupplySourcesApiModel::GetSupplySourcesResponse)
    end
  end
  describe 'test attribute "supply_sources"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_page_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
