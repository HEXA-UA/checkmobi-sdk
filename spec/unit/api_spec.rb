require 'spec_helper'

describe 'The method get' do
  it 'should return a proper hash of countries data.' do
    client = Checkmobi::TestClient.new('countries')
    api = Checkmobi::SDK::Api.new(client)

    result = api.countries
    expect(result.body).to include("iso2")
    expect(result.body).to include("name")
    expect(result.body).to include("prefix")
    expect(result.body).to include("flag_32")
    expect(result.body).to include("flag_128")
  end

  it 'should return a proper hash of prefixes data.' do
    client = Checkmobi::TestClient.new('countries')
    api = Checkmobi::SDK::Api.new(client)

    result = api.prefixes
    expect(result.body).to include("iso")
    expect(result.body).to include("prefix")
    expect(result.body).to include("name")
  end
end