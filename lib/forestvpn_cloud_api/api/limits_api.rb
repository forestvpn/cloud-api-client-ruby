=begin
#ForestVPN Cloud API

#ForestVPN Cloud - it's a Google Cloud but for VPN apps. Ready to use VPN Cloud Platform minimizes efforts to build fast, secure, and modern VPN apps. 

The version of the OpenAPI document: 2.0
Contact: support@forestvpn.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module ForestVPNCloudAPI
  class LimitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create data usage limit
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrUpdateDataUsageLimitRequest] :create_or_update_data_usage_limit_request 
    # @return [DataUsageLimit]
    def create_data_usage_limit(opts = {})
      data, _status_code, _headers = create_data_usage_limit_with_http_info(opts)
      data
    end

    # Create data usage limit
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrUpdateDataUsageLimitRequest] :create_or_update_data_usage_limit_request 
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def create_data_usage_limit_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.create_data_usage_limit ...'
      end
      # resource path
      local_var_path = '/limits/data-usage/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_or_update_data_usage_limit_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'DataUsageLimit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"LimitsApi.create_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LimitsApi#create_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete data usage limit
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_data_usage_limit(limit_id, opts = {})
      delete_data_usage_limit_with_http_info(limit_id, opts)
      nil
    end

    # Delete data usage limit
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_data_usage_limit_with_http_info(limit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.delete_data_usage_limit ...'
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling LimitsApi.delete_data_usage_limit"
      end
      # resource path
      local_var_path = '/limits/data-usage/{limitId}/'.sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"LimitsApi.delete_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LimitsApi#delete_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Data usage limit details
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DataUsageLimit]
    def get_data_usage_limit(limit_id, opts = {})
      data, _status_code, _headers = get_data_usage_limit_with_http_info(limit_id, opts)
      data
    end

    # Data usage limit details
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def get_data_usage_limit_with_http_info(limit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.get_data_usage_limit ...'
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling LimitsApi.get_data_usage_limit"
      end
      # resource path
      local_var_path = '/limits/data-usage/{limitId}/'.sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DataUsageLimit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"LimitsApi.get_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LimitsApi#get_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Data usage limit list
    # @param [Hash] opts the optional parameters
    # @return [Array<DataUsageLimit>]
    def list_data_usage_limits(opts = {})
      data, _status_code, _headers = list_data_usage_limits_with_http_info(opts)
      data
    end

    # Data usage limit list
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DataUsageLimit>, Integer, Hash)>] Array<DataUsageLimit> data, response status code and response headers
    def list_data_usage_limits_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.list_data_usage_limits ...'
      end
      # resource path
      local_var_path = '/limits/data-usage/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<DataUsageLimit>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"LimitsApi.list_data_usage_limits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LimitsApi#list_data_usage_limits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partial update profile details
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [DataUsageLimit]
    def partial_update_data_usage_limit(limit_id, create_or_update_data_usage_limit_request, opts = {})
      data, _status_code, _headers = partial_update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request, opts)
      data
    end

    # Partial update profile details
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def partial_update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.partial_update_data_usage_limit ...'
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling LimitsApi.partial_update_data_usage_limit"
      end
      # verify the required parameter 'create_or_update_data_usage_limit_request' is set
      if @api_client.config.client_side_validation && create_or_update_data_usage_limit_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_or_update_data_usage_limit_request' when calling LimitsApi.partial_update_data_usage_limit"
      end
      # resource path
      local_var_path = '/limits/data-usage/{limitId}/'.sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_or_update_data_usage_limit_request)

      # return_type
      return_type = opts[:debug_return_type] || 'DataUsageLimit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"LimitsApi.partial_update_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LimitsApi#partial_update_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update data usage limit
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [DataUsageLimit]
    def update_data_usage_limit(limit_id, create_or_update_data_usage_limit_request, opts = {})
      data, _status_code, _headers = update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request, opts)
      data
    end

    # Update data usage limit
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def update_data_usage_limit_with_http_info(limit_id, create_or_update_data_usage_limit_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.update_data_usage_limit ...'
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling LimitsApi.update_data_usage_limit"
      end
      # verify the required parameter 'create_or_update_data_usage_limit_request' is set
      if @api_client.config.client_side_validation && create_or_update_data_usage_limit_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_or_update_data_usage_limit_request' when calling LimitsApi.update_data_usage_limit"
      end
      # resource path
      local_var_path = '/limits/data-usage/{limitId}/'.sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_or_update_data_usage_limit_request)

      # return_type
      return_type = opts[:debug_return_type] || 'DataUsageLimit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"LimitsApi.update_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LimitsApi#update_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
