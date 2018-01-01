require './lib/dictionary'
require 'pry'

class Translate

  def eng_to_morse(word)
    morse = []
    letters = word.split("")
    letters.each do |letter|
      morse << Dictionary.new.dictionary[letter.downcase]
    end
    morse.join
  end

  def from_file(file_name)
    # binding.pry
    input_text = File.read(file_name)
    eng_to_morse(input_text)
  end

  def morse_to_eng(morse)
    eng = []
    letters = morse.split(/ /)
    letters.each do |letter|
      if letter == ""
        eng << " "
      else
        eng << Dictionary.new.dictionary.invert[letter]
      end
    end
    eng.join
  end

end
