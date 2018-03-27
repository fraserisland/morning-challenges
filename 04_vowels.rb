# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

def vowels (string)
  vowel = []
string.split(//).each do |x|
  if x == 'a' || x == 'e' || x == 'i' || x == 'o'|| x== 'u' || x == 'A' || x == 'E' || x == 'I' || x == 'O'|| x== 'U'
    vowel.push(x)
    end
  end
  return vowel
end
