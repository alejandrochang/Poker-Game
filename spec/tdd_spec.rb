# require 'pry'
# require 'byebug'
require 'rspec'
require 'tdd'
require 'tower_of_hanoi'

RSpec.describe Array do

  describe '#my_uniq' do
    let(:arr) { [1, 2, 1, 3, 3] }

    it 'takes an array and returns no duplicates' do
      expect(arr.my_uniq).to eq([1, 2, 3])
    end
  end



  describe '#two_sum' do
    let(:arr) { [-1, 0, 2, -2, 1] }

    it 'returns sum of a pair equal to zero' do
      expect(arr.two_sum[0]).to eq([0, 4])
    end

    it "doesn't repeat" do
      expect(arr.two_sum).not_to include([4,0])
    end

    it 'return indices that equal to zero' do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end

describe '#my_tranpose' do
  let(:arr) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }

  it 'transposes the rows by index' do
    expect(my_tranpose(arr)[2]).to eq([2, 5, 8])

  end

  it 'transposes the whole matrix' do
    expect(my_tranpose(arr)).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end
end

describe 'stock_picker' do
  let(:arr) {[2, 3, 1, 5, 9]}
  it 'show the most profitabel pair of days on which to buy the stock and then
  sell' do
    expect(stock_picker(arr)).to eq([2, 4])
  end
end

# RSpec.describe TowersOfHanoi do
#
#   describe '#' do
#     let(:arr) { [] }
#
#     it '' do
#       expect().to eq()
#     end
#   end
