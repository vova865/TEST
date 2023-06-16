# frozen_string_literal: true

RSpec.describe ExchangeIt::Api::Converter do
  specify '#convert' do
    converter_stub = instance_double described_class # , convert: 100

    allow(converter_stub).to receive(:convert).with(sum: 80).and_return(100)

    expect(converter_stub.convert(sum: 80)).to eq(100)
  end
end
