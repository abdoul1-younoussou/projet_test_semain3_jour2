# caesar_cipher.rb

def caesar_cipher(text, shift)
  # On vérifie que le texte est bien une string
  return nil unless text.is_a?(String)
  # On normalise le shift pour qu'il reste dans 0..25
  shift = shift % 26

  # On parcourt chaque caractère
  result = text.chars.map do |char|
    if char.match?(/[A-Z]/)        # Majuscule
      ((char.ord - 65 + shift) % 26 + 65).chr
    elsif char.match?(/[a-z]/)     # Minuscule
      ((char.ord - 97 + shift) % 26 + 97).chr
    else
      char                          # on garde les caractères non alphabétiques
    end
  end

  result.join
end

# Exemple :
puts caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
# caesar_cipher.rb

def caesar_cipher(text, shift)
  # On vérifie que le texte est bien une string
  return nil unless text.is_a?(String)
  # On normalise le shift pour qu'il reste dans 0..25
  shift = shift % 26

  # On parcourt chaque caractère
  result = text.chars.map do |char|
    if char.match?(/[A-Z]/)        # Majuscule
      ((char.ord - 65 + shift) % 26 + 65).chr
    elsif char.match?(/[a-z]/)     # Minuscule
      ((char.ord - 97 + shift) % 26 + 97).chr
    else
      char                          # on garde les caractères non alphabétiques
    end
  end

  result.join
end

# Exemple :
puts caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
