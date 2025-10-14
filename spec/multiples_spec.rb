
require_relative '../lib/multiples'  # charge le fichier contenant tes méthodes

describe '#is_multiple_of_3_or_5?' do
  it 'retourne TRUE quand on entre 3' do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
  end

  it 'retourne TRUE quand on entre 5' do
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
  end

  it 'retourne TRUE quand on entre 15 (multiple des deux)' do
    expect(is_multiple_of_3_or_5?(15)).to eq(true)
  end

  it 'retourne FALSE quand on entre 7' do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
  end

  it 'retourne FALSE quand on entre 0' do
    expect(is_multiple_of_3_or_5?(0)).to eq(false)
  end

  it 'retourne FALSE quand on entre un nombre négatif' do
    expect(is_multiple_of_3_or_5?(-3)).to eq(false)
  end
end

describe '#sum_of_3_and_5_multiples' do
  it 'renvoie la somme des multiples de 3 et 5 en dessous d’un certain nombre' do
    expect(sum_of_3_and_5_multiples(10)).to eq(23)
  end

  it 'renvoie 0 si le nombre est inférieur à 3' do
    expect(sum_of_3_and_5_multiples(2)).to eq(0)
  end
end

