=begin
#ForestVPN Cloud API

#ForestVPN Cloud - it's a Google Cloud but for VPN apps. Ready to use VPN Cloud Platform minimizes efforts to build fast, secure, and modern VPN apps. 

The version of the OpenAPI document: 2.0
Contact: support@forestvpn.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ForestVPNCloudAPI::CreateOrUpdateProfileRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ForestVPNCloudAPI::CreateOrUpdateProfileRequest do
  let(:instance) { ForestVPNCloudAPI::CreateOrUpdateProfileRequest.new }

  describe 'test an instance of CreateOrUpdateProfileRequest' do
    it 'should create an instance of CreateOrUpdateProfileRequest' do
      expect(instance).to be_instance_of(ForestVPNCloudAPI::CreateOrUpdateProfileRequest)
    end
  end
  describe 'test attribute "external_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["active", "suspended"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end
