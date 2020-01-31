# Your code goes here!
class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(list)
    is_angram = []
    anagram_list = []
    list.each do |word|
      test_ar = word.split('')
      anagram_ar = @word.split('')
      anagram_ar.each do |letter|
        if test_ar.include?(letter)
          is_angram << true
        else 
          is_angram << false
        end
      end
      if is_angram.include?(false)
        is_angram = []
      else
        anagram_list << word
        is_angram = []
      end
    end
    anagram_list
  end
end