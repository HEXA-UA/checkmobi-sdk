module Checkmobi
  class Error < StandardError

    attr_reader :object

    def initialize(message = nil, object = nil)
      super(message)
      @object = object
    end

  end

  class CommunicationError < Error
    attr_reader :code
  end

  class ParseError < Error; end

end