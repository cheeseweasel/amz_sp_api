=begin
#Selling Partner API for Messaging

#With the Messaging API you can build applications that send messages to buyers. You can get a list of message types that are available for an order that you specify, then call an operation that sends a message to the buyer for that order. The Messaging API returns responses that are formed according to the <a href=https://tools.ietf.org/html/draft-kelly-json-hal-08>JSON Hypertext Application Language</a> (HAL) standard.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::MessagingApiModel::CreateAmazonMotorsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateAmazonMotorsResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::MessagingApiModel::CreateAmazonMotorsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateAmazonMotorsResponse' do
    it 'should create an instance of CreateAmazonMotorsResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::MessagingApiModel::CreateAmazonMotorsResponse)
    end
  end
  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
