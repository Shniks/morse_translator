require './lib/dictionary'
require 'pry'

class Translate

  attr_reader :dictionary

  def initialize

    @dictionary = Dictionary.new.dictionary

  end

  def eng_to_morse(word)
    morse = []
    letters = word.split("")
    letters.each do |letter|
      morse << dictionary[letter.downcase]
    end
    morse.join
  end







end
