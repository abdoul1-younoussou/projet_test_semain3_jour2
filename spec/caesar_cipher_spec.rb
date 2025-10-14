# spec/caesar_cipher_spec.rb
require_relative '../caesar_cipher'

RSpec.describe '#caesar_cipher' do
  context 'avec un texte simple' do
    it 'décale correctement les lettres minuscules et majuscules' do
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
      expect(caesar_cipher("ABC xyz", 3)).to eq("DEF abc")
    end

    it 'garde la casse identique' do
      expect(caesar_cipher("Hello World", 1)).to eq("Ifmmp Xpsme")
    end

    it 'garde les caractères non alphabétiques inchangés' do
      expect(caesar_cipher("Hello, World! 123", 4)).to eq("Lipps, Asvph! 123")
    end
  end

  context 'avec des décalages spéciaux' do
    it 'gère un shift supérieur à 26' do
      expect(caesar_cipher("abc", 29)).to eq("def") # 29 % 26 = 3
    end

    it 'gère un shift négatif' do
      expect(caesar_cipher("def", -3)).to eq("abc")
    end

    it 'retourne une string vide si le texte est vide' do
      expect(caesar_cipher("", 5)).to eq("")
    end
  end

  context 'avec des inputs invalides' do
    it 'retourne nil si le texte n’est pas une string' do
      expect(caesar_cipher(nil, 3)).to eq(nil)
      expect(caesar_cipher(123, 3)).to eq(nil)
    end
  end
end
