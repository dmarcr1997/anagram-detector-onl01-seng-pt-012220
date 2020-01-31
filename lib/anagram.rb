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
      if test_ar.join
          if count > anagram_ar.length
            is_angram = false
          else
            is_angram = true
            count +=1
          end
        else
          is_angram = false
          count +=1
        end
      end
      if is_angram == true
        anagram_list << word
        count = 0
      end
    end
    anagram_list
  end
  
end