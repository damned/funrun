require 'rspec'
require 'net/http'
require_relative '../lib/funrun'

describe 'funrun' do
  it 'should start and stop in-process application from command line' do
    begin
      funrun = FunRun.new('rackup ./spec/test_rack_app_on_8080.ru').start do
        tcp_check 8080
      end

      expect(get_app_response).to eq '200'

    ensure
      funrun.stop

      expect { get_app_response }.to raise_exception
    end
  end
end

def get_app_response
  response = Net::HTTP.get_response URI('http://localhost:8080/')
  response.code
end
