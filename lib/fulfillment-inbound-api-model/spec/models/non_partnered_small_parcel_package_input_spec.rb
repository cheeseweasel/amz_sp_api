=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageInput
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NonPartneredSmallParcelPackageInput' do
  before do
    # run before each test
    @instance = AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageInput.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NonPartneredSmallParcelPackageInput' do
    it 'should create an instance of NonPartneredSmallParcelPackageInput' do
      expect(@instance).to be_instance_of(AmzSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageInput)
    end
  end
  describe 'test attribute "tracking_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
