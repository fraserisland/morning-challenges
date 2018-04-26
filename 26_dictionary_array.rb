# Dictionary
#
# You've done this one before. This time, complete the challenge
# without using a hash. Arrays only.
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 6/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A precious stone'
#
# Check your solution by running the tests:
# ruby tests/26_dictionary_array_test.rb


class Dictionary
  attr_accessor :definition, :word
  def initialize
    @dictionary = []
    @word = word
    @definition = definition
  end

  def add_word(word, definition)
      @dictionary.push([word, definition])
  end

  def lookup(word)
       @dictionary.each do |definitions|
         if definitions[0] == word
           return definitions[1]
         else return "no match"
       end
     end
  end

  def total_words
    return @dictionary.length
  end

  def all_words
     @dictionary.each{|hey,you| return "#{hey}: #{you}"}
  end

end


dictionary = Dictionary.new
dictionary.add_word("word", "definition")
puts dicitonary.total_words
puts dictionary.all_words
puts dicitonary.lookup("word")
