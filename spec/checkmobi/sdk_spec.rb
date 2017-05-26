require "spec_helper"

RSpec.describe Checkmobi::SDK do
  it "has a version number" do
    expect(Checkmobi::SDK::VERSION).not_to be nil
  end
end
