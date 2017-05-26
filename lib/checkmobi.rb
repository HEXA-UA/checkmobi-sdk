require 'rest_client'
require 'yaml'
require 'json'

require 'checkmobi/client'
require 'checkmobi/api'
require 'checkmobi/response'
require 'checkmobi/exceptions/exceptions'

module Checkmobi
  module SDK
    class << self

      attr_accessor :api_key

      def configure
        yield self
        true
      end

      alias_method :config, :configure

    end
  end
end
