class Word < ActiveRecord::Base
  # Remember to create a migration!
  # before_save :sort_letter

  # def sort_letter
  #   doppleganger = []
  #   @arr.each {|x| doppleganger.push(x) if x.length <= 3}
  #   doppleganger
  # end


  def self.is_anagram?(s1, s2)
    string_to_array(s1) == string_to_array(s2)
  end

  def self.string_to_array(input)
    input.downcase.chars.sort
  end

  def self.anagram_for?(input,a)
    # @arr = []
    # @arrrr = []
    # amboi = input.length

    # a.each {|x| @arr.push(x) if x.length == amboi}

    # @arr.each {|x| @arrrr.push(x) if is_anagram?(input, x)}
    # # a.each {|x| @arrrr.push(x) if is_anagram?(input, x)}

    # @arrrr

    add_index(table_name, column_name, options = {}) public
  end


end