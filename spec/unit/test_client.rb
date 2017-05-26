require 'json'

module Checkmobi
  class TestClient < Checkmobi::SDK::Client

    attr_reader :options, :block, :body, :code, :response

    def initialize(endpoint, &block)
      @block = block
      @endpoint = endpoint
      @body = nil
      @code = nil
    end

    def post(path, params)
      begin
        Checkmobi::SDK::Response.new(response_generator(@endpoint))
      rescue => e
        raise CommunicationError.new(e), e.response
      end
    end

    def get(path, query_string = nil)
      begin
        Checkmobi::SDK::Response.new(response_generator(@endpoint))
      rescue => e
        raise CommunicationError.new(e), e.response
      end
    end

    private

    def response_generator(endpoint)
      if endpoint == 'countries'
        collection = [{"iso2" => "Queued. Thank you.", "name" => "", "prefix" => "", "flag_32" => "", "flag_128" => ""}, {"iso2" => "Queued. Thank you.", "name" => "", "prefix" => "", "flag_32" => "", "flag_128" => ""}]
        return OpenStruct.new({"body" => JSON.generate(collection)})
      end

      if endpoint == 'prefixes'
        collection = [{"iso" => "AD", "prefix" => "375", "name" => "Andorra"}, {"iso" => "AE", "prefix" => "971", "name" => "United Arab Emirates"}]
        return OpenStruct.new({"body" => JSON.generate(collection)})
      end
    end

  end
end