# Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift

def caesar_cipher(plaintext, right_shift_factor)  
  plaintext.chars.map do|character|
    case character
    when 'a'..'z'
      shift_character_right(character, right_shift_factor, 'a')
    when 'A'..'Z'
      shift_character_right(character, right_shift_factor, 'A')
    else
      character
    end
  end.join
end

def shift_character_right(character, shift_factor, base_character)
  alphabet_size = 26
  offset = (character.ord - base_character.ord + shift_factor) % alphabet_size
  (base_character.ord + offset).chr
end
  
puts caesar_cipher("What a string!", 5)