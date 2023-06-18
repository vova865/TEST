# frozen_string_literal: true

require 'dotenv/load'
require 'webmock/rspec'
require_relative '../lib/exchange_it'

Dir["#{File.dirname(__FILE__ )}/support/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  config.define_derived_metadata(file_path: %r{exchange_it/utils}) do |meta|
    meta[:fast] = true
  end

  WebMock.allow_net_connect!

  WebMock::API.prepend(Module.new do
    extend self

    def stub_request(*args)
      VCR.turn_off!
      super
    end
  end)

  config.before{ VCR.turn_on! }
end

