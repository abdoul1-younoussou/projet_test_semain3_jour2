require_relative '../day_trader'

RSpec.describe '#day_trader' do
  it 'retourne le bon couple jours d’achat et de revente' do
    prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
    expect(day_trader(prices)).to eq([1, 4])
  end

  it 'gère un tableau avec seulement deux jours' do
    expect(day_trader([5, 10])).to eq([0,1])
  end

  it 'gère le cas où il vaut mieux ne rien acheter' do
    expect(day_trader([10, 9, 8, 7])).to eq([0,0]) # profit = 0
  end

  it 'retourne nil si le tableau est vide' do
    expect(day_trader([])).to eq(nil)
  end

  it 'retourne nil si le tableau a un seul élément' do
    expect(day_trader([5])).to eq(nil)
  end

  it 'fonctionne avec des profits négatifs ou zéro' do
    expect(day_trader([5,5,5])).to eq([0,0])
  end
end
