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
  class ProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create profile
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrUpdateProfileRequest] :create_or_update_profile_request 
    # @return [Profile]
    def create_profile(opts = {})
      data, _status_code, _headers = create_profile_with_http_info(opts)
      data
    end

    # Create profile
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrUpdateProfileRequest] :create_or_update_profile_request 
    # @return [Array<(Profile, Integer, Hash)>] Profile data, response status code and response headers
    def create_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.create_profile ...'
      end
      # resource path
      local_var_path = '/profiles/'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_or_update_profile_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Profile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"ProfilesApi.create_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#create_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create profile data usage limit
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrUpdateDataUsageLimitRequest] :create_or_update_data_usage_limit_request 
    # @return [DataUsageLimit]
    def create_profile_data_usage_limit(profile_id, opts = {})
      data, _status_code, _headers = create_profile_data_usage_limit_with_http_info(profile_id, opts)
      data
    end

    # Create profile data usage limit
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrUpdateDataUsageLimitRequest] :create_or_update_data_usage_limit_request 
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def create_profile_data_usage_limit_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.create_profile_data_usage_limit ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.create_profile_data_usage_limit"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/limits/data-usages/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
        :operation => :"ProfilesApi.create_profile_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#create_profile_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete profile
    # Deletes profile and all associated resources
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_profile(profile_id, opts = {})
      delete_profile_with_http_info(profile_id, opts)
      nil
    end

    # Delete profile
    # Deletes profile and all associated resources
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_profile_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.delete_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.delete_profile"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
        :operation => :"ProfilesApi.delete_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#delete_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete profile data usage limit
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_profile_data_usage_limit(profile_id, limit_id, opts = {})
      delete_profile_data_usage_limit_with_http_info(profile_id, limit_id, opts)
      nil
    end

    # Delete profile data usage limit
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_profile_data_usage_limit_with_http_info(profile_id, limit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.delete_profile_data_usage_limit ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.delete_profile_data_usage_limit"
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling ProfilesApi.delete_profile_data_usage_limit"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/limits/data-usages/{limitId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s)).sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

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
        :operation => :"ProfilesApi.delete_profile_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#delete_profile_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Profile details
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Profile]
    def get_profile(profile_id, opts = {})
      data, _status_code, _headers = get_profile_with_http_info(profile_id, opts)
      data
    end

    # Profile details
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Profile, Integer, Hash)>] Profile data, response status code and response headers
    def get_profile_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.get_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.get_profile"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Profile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"ProfilesApi.get_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#get_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Profile data usage limit details
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DataUsageLimit]
    def get_profile_data_usage_limit(profile_id, limit_id, opts = {})
      data, _status_code, _headers = get_profile_data_usage_limit_with_http_info(profile_id, limit_id, opts)
      data
    end

    # Profile data usage limit details
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def get_profile_data_usage_limit_with_http_info(profile_id, limit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.get_profile_data_usage_limit ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.get_profile_data_usage_limit"
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling ProfilesApi.get_profile_data_usage_limit"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/limits/data-usages/{limitId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s)).sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

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
        :operation => :"ProfilesApi.get_profile_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#get_profile_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Profile data usage limits list
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<DataUsageLimit>]
    def list_profile_data_usage_limits(profile_id, opts = {})
      data, _status_code, _headers = list_profile_data_usage_limits_with_http_info(profile_id, opts)
      data
    end

    # Profile data usage limits list
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DataUsageLimit>, Integer, Hash)>] Array<DataUsageLimit> data, response status code and response headers
    def list_profile_data_usage_limits_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.list_profile_data_usage_limits ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.list_profile_data_usage_limits"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/limits/data-usages/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
        :operation => :"ProfilesApi.list_profile_data_usage_limits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#list_profile_data_usage_limits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Profile stats list
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :aggregate_by 
    # @option opts [Date] :date_after 
    # @option opts [Date] :date_before 
    # @option opts [Float] :per_page 
    # @option opts [Float] :page 
    # @return [Array<ProfileStats>]
    def list_profile_stats(profile_id, opts = {})
      data, _status_code, _headers = list_profile_stats_with_http_info(profile_id, opts)
      data
    end

    # Profile stats list
    # @param profile_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :aggregate_by 
    # @option opts [Date] :date_after 
    # @option opts [Date] :date_before 
    # @option opts [Float] :per_page 
    # @option opts [Float] :page 
    # @return [Array<(Array<ProfileStats>, Integer, Hash)>] Array<ProfileStats> data, response status code and response headers
    def list_profile_stats_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.list_profile_stats ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.list_profile_stats"
      end
      allowable_values = ["hourly", "daily", "weekly", "monthly"]
      if @api_client.config.client_side_validation && opts[:'aggregate_by'] && !allowable_values.include?(opts[:'aggregate_by'])
        fail ArgumentError, "invalid value for \"aggregate_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/stats/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'aggregate_by'] = opts[:'aggregate_by'] if !opts[:'aggregate_by'].nil?
      query_params[:'date_after'] = opts[:'date_after'] if !opts[:'date_after'].nil?
      query_params[:'date_before'] = opts[:'date_before'] if !opts[:'date_before'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ProfileStats>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"ProfilesApi.list_profile_stats",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#list_profile_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Profile list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :external_key 
    # @option opts [Float] :per_page 
    # @option opts [Float] :page 
    # @return [Array<Profile>]
    def list_profiles(opts = {})
      data, _status_code, _headers = list_profiles_with_http_info(opts)
      data
    end

    # Profile list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :external_key 
    # @option opts [Float] :per_page 
    # @option opts [Float] :page 
    # @return [Array<(Array<Profile>, Integer, Hash)>] Array<Profile> data, response status code and response headers
    def list_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.list_profiles ...'
      end
      # resource path
      local_var_path = '/profiles/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'external_key'] = opts[:'external_key'] if !opts[:'external_key'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Profile>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"ProfilesApi.list_profiles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#list_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partial update profile details
    # @param profile_id [String] 
    # @param create_or_update_profile_request [CreateOrUpdateProfileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Profile]
    def partial_update_profile(profile_id, create_or_update_profile_request, opts = {})
      data, _status_code, _headers = partial_update_profile_with_http_info(profile_id, create_or_update_profile_request, opts)
      data
    end

    # Partial update profile details
    # @param profile_id [String] 
    # @param create_or_update_profile_request [CreateOrUpdateProfileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Profile, Integer, Hash)>] Profile data, response status code and response headers
    def partial_update_profile_with_http_info(profile_id, create_or_update_profile_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.partial_update_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.partial_update_profile"
      end
      # verify the required parameter 'create_or_update_profile_request' is set
      if @api_client.config.client_side_validation && create_or_update_profile_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_or_update_profile_request' when calling ProfilesApi.partial_update_profile"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_or_update_profile_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Profile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"ProfilesApi.partial_update_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#partial_update_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partial update profile data usage limit
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [DataUsageLimit]
    def partial_update_profile_data_usage_limit(profile_id, limit_id, create_or_update_data_usage_limit_request, opts = {})
      data, _status_code, _headers = partial_update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request, opts)
      data
    end

    # Partial update profile data usage limit
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def partial_update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.partial_update_profile_data_usage_limit ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.partial_update_profile_data_usage_limit"
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling ProfilesApi.partial_update_profile_data_usage_limit"
      end
      # verify the required parameter 'create_or_update_data_usage_limit_request' is set
      if @api_client.config.client_side_validation && create_or_update_data_usage_limit_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_or_update_data_usage_limit_request' when calling ProfilesApi.partial_update_profile_data_usage_limit"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/limits/data-usages/{limitId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s)).sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

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
        :operation => :"ProfilesApi.partial_update_profile_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#partial_update_profile_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update profile details
    # @param profile_id [String] 
    # @param create_or_update_profile_request [CreateOrUpdateProfileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Profile]
    def update_profile(profile_id, create_or_update_profile_request, opts = {})
      data, _status_code, _headers = update_profile_with_http_info(profile_id, create_or_update_profile_request, opts)
      data
    end

    # Update profile details
    # @param profile_id [String] 
    # @param create_or_update_profile_request [CreateOrUpdateProfileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Profile, Integer, Hash)>] Profile data, response status code and response headers
    def update_profile_with_http_info(profile_id, create_or_update_profile_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.update_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.update_profile"
      end
      # verify the required parameter 'create_or_update_profile_request' is set
      if @api_client.config.client_side_validation && create_or_update_profile_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_or_update_profile_request' when calling ProfilesApi.update_profile"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_or_update_profile_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Profile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiTokenAuth', 'BearerTokenAuth']

      new_options = opts.merge(
        :operation => :"ProfilesApi.update_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#update_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update profile data usage limit
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [DataUsageLimit]
    def update_profile_data_usage_limit(profile_id, limit_id, create_or_update_data_usage_limit_request, opts = {})
      data, _status_code, _headers = update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request, opts)
      data
    end

    # Update profile data usage limit
    # @param profile_id [String] 
    # @param limit_id [String] 
    # @param create_or_update_data_usage_limit_request [CreateOrUpdateDataUsageLimitRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataUsageLimit, Integer, Hash)>] DataUsageLimit data, response status code and response headers
    def update_profile_data_usage_limit_with_http_info(profile_id, limit_id, create_or_update_data_usage_limit_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProfilesApi.update_profile_data_usage_limit ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling ProfilesApi.update_profile_data_usage_limit"
      end
      # verify the required parameter 'limit_id' is set
      if @api_client.config.client_side_validation && limit_id.nil?
        fail ArgumentError, "Missing the required parameter 'limit_id' when calling ProfilesApi.update_profile_data_usage_limit"
      end
      # verify the required parameter 'create_or_update_data_usage_limit_request' is set
      if @api_client.config.client_side_validation && create_or_update_data_usage_limit_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_or_update_data_usage_limit_request' when calling ProfilesApi.update_profile_data_usage_limit"
      end
      # resource path
      local_var_path = '/profiles/{profileId}/limits/data-usages/{limitId}/'.sub('{' + 'profileId' + '}', CGI.escape(profile_id.to_s)).sub('{' + 'limitId' + '}', CGI.escape(limit_id.to_s))

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
        :operation => :"ProfilesApi.update_profile_data_usage_limit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProfilesApi#update_profile_data_usage_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end