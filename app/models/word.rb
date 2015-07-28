class Word < ActiveRecord::Base
  # Remember to create a migration!


  def self.is_anagram?(s1, s2)
    string_to_array(s1) == string_to_array(s2)
  end

  def self.string_to_array(input)
    input.downcase.chars.sort
  end

  def self.anagram_for?(input,a)
    arr = []
    a.each {|x| arr.push(x) if is_anagram?(input, x)}
    arr
  end

end