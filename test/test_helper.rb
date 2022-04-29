# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'bitcoin_unit_converter'
require 'minitest/reporters'

require 'minitest/autorun'
Minitest::Reporters.use!
