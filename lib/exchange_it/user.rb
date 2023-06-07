# frozen_string_literal: true

module ExchangeIt
  class User
    attr_reader :name, :surname

    def initialize(name, surname)
      @name = name.is_a?(String) ? name : name.to_s
      @surname = surname
    end
  end
end
