# Your TextAnalyzer model code will go here.
require 'pry'
class TextAnalyzer

attr_accessor :text 

def initialize(text)
    @text = text.downcase 
end 

def vowels 
    # text = @text_from_user.split(//)
    count = 0 
    vowels = ["a", "e", "i", "o", "u"]
    text.split(//).each do |char|
      vowels.each do |vowel|
        if char == vowel
          count += 1 
        end 
      end 
    end 
    count 
end 

def consonants 
    count = 0 
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "x", "v", "w", "y", "z"]
    text.split(//).each do |char|
      consonants.each do |consonant|
        if char == consonant
          count += 1 
        end 
      end 
    end 
    count 
end

def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}
 
    arr1.map do |c|
      arr2[c] =  arr.count(c)
    end
 
    biggest = { arr2.keys.first => arr2.values.first }
 
    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end
 
    biggest
  end



end 