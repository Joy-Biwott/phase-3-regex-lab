def starts_with_a_vowel?(word)
        word.match(/^[aeiou]/i) != nil
end

def words_starting_with_un_and_ending_with_ing(text)
    return text.scan(/\bun\w+ing\b/i)
end

def words_five_letters_long(text)
    return text.scan(/\b\w{5}\b/i)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match(/\A[A-Z].+[[:punct:]]\z/) != nil
end

def valid_phone_number?(phone)
    stripped_number = phone.gsub(/\D/, '')
    stripped_number.match?(/^\d{10}$/) || stripped_number.match?(/^\d{3}-\d{3}-\d{4}$/)
end
