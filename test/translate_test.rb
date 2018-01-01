require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'
require 'pry'

class TranslateTest < Minitest::Test

  def test_if_it_exists
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_method_english_to_morse_one_lowercase_letter
    translator = Translate.new
    result = translator.eng_to_morse("h")

    assert_equal "....", result
  end

  def test_method_english_to_morse_two_lowercase_letter
    translator = Translate.new
    result = translator.eng_to_morse("he")

    assert_equal ".....", result
  end

  def test_method_english_to_morse_two_lowercase_letter_with_space
    translator = Translate.new
    result = translator.eng_to_morse("h e")

    assert_equal ".... .", result
  end

  def test_method_english_to_morse_lowercase_words
    translator = Translate.new
    result = translator.eng_to_morse("hello world")

    assert_equal "......-...-..--- .-----.-..-..-..", result
  end

  def test_method_english_to_morse_uppercase_words
    translator = Translate.new
    result = translator.eng_to_morse("HELLO WORLD")

    assert_equal "......-...-..--- .-----.-..-..-..", result
  end

  def test_method_english_to_morse_capitalized_words
    translator = Translate.new
    result = translator.eng_to_morse("Hello World")

    assert_equal "......-...-..--- .-----.-..-..-..", result
  end

  def test_method_english_to_morse_words_with_numbers
    translator = Translate.new
    result = translator.eng_to_morse("There are 3 ships")

    assert_equal "-......-.. .-.-.. ...-- ..........--....", result
  end



end
