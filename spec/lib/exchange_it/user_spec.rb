# frozen_string_literal: true

RSpec.describe ExchangeIt::User do
  let(:user) { described_class.new('John', 'Doe') }
  let(:user_no_name) { described_class.new(nil, 'Doe') }

  it 'return user name' do
    expect(user.name).to eq('John')
  end

  it 'return name as string' do
    expect(user_no_name.name).to be_an_instance_of(String)
  end
end
