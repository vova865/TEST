# frozen_string_literal: true

RSpec.describe ExchangeIt::Utils::Uid do
  let(:dummy) { Class.new { include ExchangeIt::Utils::Uid }.new } # заглушка

  describe '#hash' do
    it 'return nil when no args were given' do
      expect(dummy.hash).to be_nil
    end

    it 'return string when at least one argument was given' do
      expect(dummy.hash('str', 'str2')).to be_an_instance_of(String)
    end
  end
end
