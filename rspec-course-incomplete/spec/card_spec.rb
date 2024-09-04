require './card.rb'

RSpec.describe Card do 
  let(:card) {
    Card.new('Ace', 'Spades')
  }

  it 'has a rank & that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'King'
    expect(card.rank).to eq('King') 
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error msg' do
    card.suit = "Nonsense"
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but got #{card.suit} instead."
  end
end
