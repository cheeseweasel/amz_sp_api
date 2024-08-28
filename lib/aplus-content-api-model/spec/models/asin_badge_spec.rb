=begin
#Selling Partner API for A+ Content Management

#With the A+ Content API, you can build applications that help selling partners add rich marketing content to their Amazon product detail pages. A+ content helps selling partners share their brand and product story, which helps buyers make informed purchasing decisions. Selling partners assemble content by choosing from content modules and adding images and text.

OpenAPI spec version: 2020-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.62
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::AplusContentApiModel::AsinBadge
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AsinBadge' do
  before do
    # run before each test
    @instance = AmzSpApi::AplusContentApiModel::AsinBadge.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AsinBadge' do
    it 'should create an instance of AsinBadge' do
      expect(@instance).to be_instance_of(AmzSpApi::AplusContentApiModel::AsinBadge)
    end
  end
end
