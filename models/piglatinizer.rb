class PigLatinizer
  attr_reader :user_phrase

  def initialize
    @user_phrase = user_phrase
  end

  def piglatinize(word)
    if word[0].scan(/[aeiouAEIOU]/) != []
      word += "way"
    else
      index = word.index(/[aeiou]/)
      word_core = word.slice(index..word.size)
      word_start = word.slice(0..index - 1)
      pig_word = word_core + word_start + "ay"
    end
  end

  def to_pig_latin(user_phrase)
    text_array = user_phrase.split(" ")
    piglatin = []

    text_array.each do |word|
      if word[0].scan(/[aeiouAEIOU]/) != []
        word += "way"
        piglatin << word
      else
        index = word.index(/[aeiou]/)
        word_core = word.slice(index..word.size)
        word_start = word.slice(0..index - 1)
        pig_word = word_core + word_start + "ay"
        piglatin << pig_word
      end
    end
    piglatin.join(" ")
  end
end
