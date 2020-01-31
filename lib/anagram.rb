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
      test_ar = word.split('').sort!
      anagram_ar = @word.split('').sort!
      puts if test_ar.join('') == anagram_ar.join('')
        is_angram ==true
      end
      if is_angram == true
        anagram_list << word
      end
    end
    anagram_list
  end
  
end