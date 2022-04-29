# frozen_string_literal: true

require 'test_helper'

describe BitcoinUnitConverter do

  describe 'when version is called' do
    it 'should return a value' do
      BitcoinUnitConverter::VERSION.wont_be_nil
    end
  end

  describe 'when convert is called' do
    it 'should convert btc to smaller unit' do
      BitcoinUnitConverter.convert(1, 'btc', 'sat').must_equal 100_000_000.to_s
      BitcoinUnitConverter.convert(1, 'btc', 'uBTC').must_equal 1_000_000.to_s
      BitcoinUnitConverter.convert(1, 'btc', 'ubtc').must_equal 1_000_000.to_s
    end

    it 'should convert sat to bigger unit' do
      BitcoinUnitConverter.convert(100_000_000, 'sat', 'btc').must_equal '1'
      BitcoinUnitConverter.convert(1, 'sat', 'btc').must_equal '0.00000001'
      BitcoinUnitConverter.convert(100, 'sat', 'uBTC').must_equal '1'
      BitcoinUnitConverter.convert(100, 'sat', 'ubtc').must_equal '1'
      BitcoinUnitConverter.convert(1, 'sat', 'ubtc').must_equal '0.01'
      BitcoinUnitConverter.convert(1, 'sat', 'uBTC').must_equal '0.01'
    end

    it 'should fail on invalid input et' do
      _ { BitcoinUnitConverter.convert(1, 'et', 'milli') }.must_raise StandardError
    end
  end
end
