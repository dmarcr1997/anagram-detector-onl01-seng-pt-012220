# Your code goes here!
class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(list)
    anagram_list = []
    list.each do |word|
      is_angram = false
      count = 0
      test_ar = word.split('').sort!
      anagram_ar = @word.split('').sort!
      test_ar.join('')
      anagram_ar.join('')
      if test_ar == anagram_ar
        is_angram ==true
      end
      if is_angram == true
        anagram_list << word
        count = 0
      end
    end
    anagram_list
  end
  
end