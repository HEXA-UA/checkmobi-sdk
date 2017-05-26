require 'checkmobi/exceptions/exceptions'

module Checkmobi
  module SDK
    class Client

      def initialize(api_key = Checkmobi.api_key,
                     api_host = 'api.checkmobi.com',
                     api_version = 'v1')

        endpoint = endpoint_generator(api_host, api_version)

        @http_client = RestClient::Resource.new(endpoint,
                                                headers: {
                                                    :Authorization => api_key,
                                                    :content_type => 'application/json'
                                                })
      end

      def post(resource_path, data, headers = {})
        response = @http_client[resource_path].post(data.to_json, headers)
        Checkmobi::SDK::Response.new(response)
      rescue => err
        raise communication_error err
      end

      def get(resource_path, params = nil)
        if params
          response = @http_client[resource_path].get(params: params)
        else
          response = @http_client[resource_path].get()
        end
        Checkmobi::SDK::Response.new(response)
      rescue => err
        raise communication_error err
      end

      def put(resource_path, data)
        response = @http_client[resource_path].put(data.to_json)
        Checkmobi::SDK::Response.new(response)
      rescue => err
        raise communication_error err
      end

      def delete(resource_path)
        begin
          response = @http_client[resource_path].delete
          Checkmobi::SDK::Response.new(response)
        rescue => err
          raise communication_error err
        end
      end

      private

      def endpoint_generator(api_host, api_version)
        scheme = 'https'
        "#{scheme}://#{api_host}/#{api_version}"
      end

      def communication_error(e)
        return CommunicationError.new(e.message, e.response) if e.respond_to? :response
        CommunicationError.new(e.message)
      end

    end
  end
end
