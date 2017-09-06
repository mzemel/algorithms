require 'spec_helper'

RSpec.describe MergeSort do
  let(:input) { [1, 4, 2, 6, 3, 7, 5, 8] }
  let(:output) { [1, 2, 3, 4, 5, 6, 7, 8] }

  describe 'merge' do
    let(:output) { [1, 2, 4, 6] }

    it 'merges a section of an array' do
      result = described_class.merge(input, 0, 1, 3)
      expect(result).to eq(output)
    end
  end

  it 'sorts an array' do
    expect(described_class.sort(input)).to eq(output)
  end
end