require 'spec_helper'

RSpec.describe InsertionSort do
  let(:input) { [ 3, 4, 1, 6, 2, 5 ] }
  let(:output) { [ 1, 2, 3, 4, 5, 6 ] }

  subject { InsertionSort.new(input) }

  it 'sorts an array' do
    expect(subject.sort).to eq(output)
  end
end
