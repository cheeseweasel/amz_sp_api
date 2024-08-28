=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders and manage their resources.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ServicesApiModel::CapacityType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CapacityType' do
  before do
    # run before each test
    @instance = AmzSpApi::ServicesApiModel::CapacityType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CapacityType' do
    it 'should create an instance of CapacityType' do
      expect(@instance).to be_instance_of(AmzSpApi::ServicesApiModel::CapacityType)
    end
  end
end
