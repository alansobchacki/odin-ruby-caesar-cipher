# Encodes a string using caesar cipher - needs a string and a shift value to work.
class CaesarCipher
  def cipher(text, shift_value)
    alphabet_lowercase = ('a'..'z').to_a
    alphabet_uppercase = ('A'..'Z').to_a
    cipher_text = ''

    text.each_char do |char|
      if alphabet_lowercase.include?(char)
        cipher_text << alphabet_lowercase[(alphabet_lowercase.index(char) + shift_value) % 26]
      elsif alphabet_uppercase.include?(char)
        cipher_text << alphabet_uppercase[(alphabet_uppercase.index(char) + shift_value) % 26]
      else
        cipher_text << char
      end
    end

    puts cipher_text
  end

  def change_string
    puts "Please write the phrase you'd like to encode using Caesar's Cipher:"
    string = gets.chomp
    puts "Now, please enter the shift value you'd like to use. Enter a numerical value."
    value = gets.chomp.to_i

    cipher(string, value)
  end
end

caesar = CaesarCipher.new
caesar.change_string
