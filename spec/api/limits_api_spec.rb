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

# Unit tests for ForestVPNCloudAPI::LimitsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LimitsApi' do
  before do
    # run before each test
    @api_instance = ForestVPNCloudAPI::LimitsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LimitsApi' do
    it 'should create an instance of LimitsApi' do
      expect(@api_instance).to be_instance_of(ForestVPNCloudAPI::LimitsApi)
    end
  end

  # unit tests for create_data_usage_limit
  # Create data usage limit
  # @param [Hash] opts the optional parameters
  # @option opts [CreateOrUpdateDataUsageLimitRequest] :create_or_update_data_usage_limit_request 
  # @return [DataUsageLimit]
  describe 'create_data_usage_limit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_data_usage_limit
  # Delete data usage limit
  # @param limit_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_data_usage_limit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_data_usage_limit
  # Data usage limit details
  # @param limit_id 
  # @param [Hash] opts the optional parameters
  # @return [DataUsageLimit]
  describe 'get_data_usage_limit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lis_data_usage_limits
  # Data usage limit list
  # @param [Hash] opts the optional parameters
  # @return [Array<DataUsageLimit>]
  describe 'lis_data_usage_limits test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for partial_update_data_usage_limit
  # Partial update profile details
  # @param limit_id 
  # @param create_or_update_data_usage_limit_request 
  # @param [Hash] opts the optional parameters
  # @return [DataUsageLimit]
  describe 'partial_update_data_usage_limit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_data_usage_limit
  # Update data usage limit
  # @param limit_id 
  # @param create_or_update_data_usage_limit_request 
  # @param [Hash] opts the optional parameters
  # @return [DataUsageLimit]
  describe 'update_data_usage_limit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end