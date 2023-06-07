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

  it 'return user surname' do
    expect(user.surname).to eq('Doe')
  end

  it 'has account' do
    expect(user.account).to be_an_instance_of(ExchangeIt::Account)
  end

  it 'has zero balance by default' do
    expect(user.balance).to eq(0)
  end
end
