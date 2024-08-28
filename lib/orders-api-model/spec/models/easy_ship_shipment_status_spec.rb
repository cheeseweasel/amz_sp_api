=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools. The Orders API supports orders that are two years old or less. Orders more than two years old will not show in the API response.  **Note:** The Orders API supports orders from 2016 and after for the JP, AU, and SG marketplaces.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::OrdersApiModel::EasyShipShipmentStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EasyShipShipmentStatus' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersApiModel::EasyShipShipmentStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EasyShipShipmentStatus' do
    it 'should create an instance of EasyShipShipmentStatus' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersApiModel::EasyShipShipmentStatus)
    end
  end
end
