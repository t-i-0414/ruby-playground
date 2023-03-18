# typed: false
# frozen_string_literal: true

require 'spec_helper'
require './src/sum'

RSpec.describe Sum do
  context 'when given two integers' do
    it 'returns their sum' do
      expect(described_class.integers(1, 2)).to eq(3)
    end
  end

  context 'when given two floats' do
    it 'returns their sum' do
      expect(described_class.floats(1.1, 2.2)).to eq(3.3)
    end
  end
end
