def caesar_cipher(text, shift_value)
    alphabet_lowercase = ('a'..'z').to_a
    alphabet_uppercase = ('A'..'Z').to_a
    cipher_text = ""
    for i in 0..text.length - 1
        if alphabet_lowercase.include?(text[i])
            letter = alphabet_lowercase.index(text[i]) + shift_value
            if letter >= 26
                letter = letter % 26
                cipher_text = cipher_text << alphabet_lowercase[letter]
            else
                cipher_text = cipher_text << alphabet_lowercase[letter]
            end
        elsif alphabet_uppercase.include?(text[i])
            letter = alphabet_uppercase.index(text[i]) + shift_value 
            if letter >= 26
                letter = letter % 26
                cipher_text = cipher_text << alphabet_uppercase[letter]
            else 
                cipher_text = cipher_text << alphabet_uppercase[letter]
            end
        else
            cipher_text = cipher_text << text[i]
        end
    end
    cipher_text
end

p caesar_cipher('What a string, Man!', 20)