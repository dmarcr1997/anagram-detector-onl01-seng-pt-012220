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
      test_ar = word.split('')
      anagram_ar = @word.split('')
      sorted_test = test_ar.sort!
      sorted_anagram = anagram_ar.sort!
      sorted_test.each do |letter|
        if letter == sorted_anagram[count]
          if count == sorted_anagram.length + 1
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