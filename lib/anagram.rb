# Your code goes here!
class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(list)
    is_angram = false
    anagram_list = []
    anagram_ar = @word
    list.each do |word|
      anagram_ar.each do |letter|
        if word.include?(letter)
          is_angram = true
        else 
          is_angram = false
        end
      end
      if is_angram == true
        anagram_list << word
      end
    end
    anagram_list
  end
end