=begin
#Reseplaneraren

#Provides access to Västtrafik journey planner

OpenAPI spec version: 1.10.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.28

=end

require 'uri'

module SwaggerClient
  class SysteminfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Provides information about the journey planner and the underlying data
    # Provides information about the journey planner and underlying data. It will return the begin of end of the timetable period and the creation date of the timetable data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format the required response format
    # @option opts [String] :jsonp_callback If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
    # @return [SystemInfo]
    def get_system_info(opts = {})
      data, _status_code, _headers = get_system_info_with_http_info(opts)
      data
    end

    # Provides information about the journey planner and the underlying data
    # Provides information about the journey planner and underlying data. It will return the begin of end of the timetable period and the creation date of the timetable data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format the required response format
    # @option opts [String] :jsonp_callback If JSONP response format is needed, you can append an additional parameter to specify the name of a callback function, and the JSON object will be wrapped by a function call with this name.
    # @return [Array<(SystemInfo, Fixnum, Hash)>] SystemInfo data, response status code and response headers
    def get_system_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SysteminfoApi.get_system_info ...'
      end
      # resource path
      local_var_path = '/systeminfo'

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'jsonpCallback'] = opts[:'jsonp_callback'] if !opts[:'jsonp_callback'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SystemInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SysteminfoApi#get_system_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
