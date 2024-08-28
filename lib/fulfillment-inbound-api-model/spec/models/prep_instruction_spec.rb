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

# Unit tests for AmzSpApi::FulfillmentInboundApiModel::PrepInstruction
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PrepInstruction' do
  before do
    # run before each test
    @instance = AmzSpApi::FulfillmentInboundApiModel::PrepInstruction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PrepInstruction' do
    it 'should create an instance of PrepInstruction' do
      expect(@instance).to be_instance_of(AmzSpApi::FulfillmentInboundApiModel::PrepInstruction)
    end
  end
end
