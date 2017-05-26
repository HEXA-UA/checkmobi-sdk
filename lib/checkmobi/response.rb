module Checkmobi
  module SDK
    class Response

      attr_accessor :body, :code

      def initialize(response)
        @body = response.body
        @code = response.code
      end

      def to_h
        JSON.parse(@body)
      rescue => err
        raise err
      end

      # Replace @body with Ruby Hash
      #
      # @return [Hash] A standard Ruby Hash containing the HTTP result.
      def to_h!
        @body = JSON.parse(@body)
      rescue => err
        raise ParseError.new(err), err
      end

      # Return response as Yaml
      #
      # @return [String] A string containing response as YAML
      def to_yaml
        YAML.dump(to_h)
      rescue => err
        raise err
      end

      # Replace @body with YAML
      #
      # @return [String] A string containing response as YAML
      def to_yaml!
        @body = YAML.dump(to_h)
      rescue => err
        raise ParseError.new(err), err
      end

    end
  end
end