def starts_with_a_vowel?(word)
    if word.downcase[0].match(/[aeiou]/)
        return true
    else
        return false
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    array = text.downcase.split(/\s/)
    return array.select do |word|
        word.match(/\Aun/) && word.match(/ing\z/)
    end
end

def words_five_letters_long(text)
    array = text.downcase.split(/\s/)
    return array.select do |word| 
        newWord = word.scan(/[a-z]/)
        newWord.length === 5
    end
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    if text.split(/\s/)[0].match(/[A-Z]/) && text.split(/\s/)[-1].match(/[.!?]/)
        return true
    else
        return false
    end
end

def valid_phone_number?(phone)
    if phone.scan(/[0-9]/).length === 10
        return true
    else
        return false
    end
end
