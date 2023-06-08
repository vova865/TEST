# frozen_string_literal: true

require_relative '../lib/exchange_it'

RSpec.configure do |config|
  config.define_derived_metadata(file_path: %r{exchange_it/utils}) do |meta|
    meta[:fast] = true
  end
end
