# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'bigdecimal'

# This is a simple example of a module with a method that takes two integers and returns their sum.
class Sum
  extend T::Sig

  sig do
    params(integers: Integer).returns(Integer)
  end
  def self.integers(*integers)
    integers.inject(0) { |sum, i| sum + i }
  end

  sig do
    params(floats: Float).returns(Float)
  end
  def self.floats(*floats)
    floats.inject('0') { |sum, f| BigDecimal(sum) + BigDecimal(f.to_s) }.to_f
  end
end
