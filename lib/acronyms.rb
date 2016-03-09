require 'rubygems'
require 'bundler/setup'

# Extending base String class with `.acronyms`
class String
  def acronyms
    return [] if empty?
    split = self.split(/[\s\-]/)

    romans = %w(I II III IV V VI VII VIII IX)

    # If a word is a roman numeral, we keep it, othewise we take the first
    # letter
    acronym = split.map do |word|
      romans.index(word).nil? ? word[0] : word
    end
    acronym = acronym.join('')

    # If a word is a roman numeral, we convert it, otherwise we take the first
    # letter
    acronym_roman = split.map do |word|
      roman_index = romans.index(word)
      !roman_index.nil? ? roman_index + 1 : word.upcase[0]
    end
    acronym_roman = acronym_roman.join('')

    [acronym, acronym_roman].uniq
  end
end
