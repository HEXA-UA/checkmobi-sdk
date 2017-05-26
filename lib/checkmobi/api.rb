module Checkmobi
  module SDK
    class Api

      def initialize(client = Checkmobi::SDK::Client.new)
        @client = client
      end

      def account_details
        @client.get '/my-account'
      end

      def countries
        @client.get '/countries'
      end

      def prefixes
        @client.get '/prefixes'
      end

      def send_sms(params)
        @client.post '/sms/send', params
      end

      def check_number(params)
        @client.post '/checknumber', params
      end

      def request_validation(params)
        @client.post '/validation/request', params
      end

      def verify_pin(params)
        @client.post '/validation/verify', params
      end

      def validation_status(id)
        @client.get "/validation/status/#{id}"
      end

      def sms_details(id)
        @client.get "/sms/#{id}"
      end

      def place_call(params)
        @client.post '/call', params
      end

      def call_details(id)
        @client.get "/call/#{id}"
      end

      def hang_up_call(id)
        @client.delete "/call/#{id}"
      end

    end
  end
end