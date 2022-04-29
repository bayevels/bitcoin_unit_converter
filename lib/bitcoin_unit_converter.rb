# frozen_string_literal: true

require_relative 'bitcoin_unit_converter/version'
require 'bigdecimal'

module BitcoinUnitConverter
  # Later add more units https://www.cryps.info/en/BTC_to_Satoshi/1/
  UNITS = {
    'sat': 1,
    'Satoshi': 1,
    'uBTC': 100, # MicroBit
    'ubtc': 100, # MicroBit
    'mBTC': 100_000, # Milibit
    'mbtc': 100_000, # Milibit
    'cBTC': 1_000_000, # Bitcent
    'cbtc': 1_000_000, # Bitcent
    'dBTC': 10_000_000, # deciBitcoin
    'dbtc': 10_000_000, # deciBitcoin
    'BTC': 100_000_000,
    'btc': 100_000_000,
    'daBTC': 10_000_000, # decaBitcoin
    'dabtc': 1_000_000_000 # decaBitcoin
  }.freeze

  class << self
    def convert(amount, unit = 'sat', to_unit = 'btc')
      return nil if amount.nil?

      return from_sat(amount, to_unit).to_s('F').delete_suffix('.0') if unit == 'sat'

      from_sat(to_sat(amount, unit), to_unit).to_s('F').delete_suffix('.0')
    end

    def to_sat(amount, unit = 'btc')
      return nil if amount.nil?

      begin
        BigDecimal(UNITS[unit.to_sym] * amount, 16)
      rescue StandardError => e
        raise e.class
      end
    end

    def from_sat(amount, unit = 'btc')
      return nil if amount.nil?

      begin
        (BigDecimal(amount, 16) / BigDecimal(UNITS[unit.to_sym], 16))
      rescue StandardError => e
        raise e.class
      end
    end
  end
end
