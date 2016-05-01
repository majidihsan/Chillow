require_relative 'dwelling'

class House < Dwelling

  attr_reader :ask_price

  def initialize(address, city, state, zip_code, ask_price)
    super(address, city, state, zip_code)
    @ask_price = ask_price
  end
end
