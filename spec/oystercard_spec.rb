require 'oystercard'

describe Oystercard do

  it 'a new oystercard has a balance of 0' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do
    it 'tops up the balance by a given amount' do
      subject.top_up(20.00)
      expect(subject.balance).to eq 20.00
    end
  end

end
