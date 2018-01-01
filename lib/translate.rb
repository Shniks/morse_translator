require './lib/dictionary'
require 'pry'

class Translate

  attr_reader :dictionary, :morse_to_eng_dict

  def initialize

    @dictionary = Dictionary.new.dictionary
    @morse_to_eng_dict = Dictionary.new.dictionary.invert

  end

  def eng_to_morse(word)
    morse = []
    letters = word.split("")
    letters.each do |letter|
      morse << dictionary[letter.downcase]
    end
    morse.join
  end

  def eng_to_morse(word)
    morse = []
    letters = word.split("")
    letters.each do |letter|
      morse << dictionary[letter.downcase]
    end
    morse.join
  end

  def morse_to_eng(morse)
    eng = []
    letters = morse.split(" ")
    letters.each do |letter|
      eng << morse_to_eng_dict[letter]
    end
    eng.join
  end

end
