# Complete the method called find_longest_word, which will accept a string as
# a parameter (usually a sentence), and return another string that will be the
# longest word in that sentence.

# def find_longest_word(sentence)
  
#   word_array = sentence.split(" ")

#   word_array.each do |word|
#     word.sub!(/\W+/, "") #matches non-word characters and substitutes them with empty spaces
#   end
  
#   word_array.max_by {|word| word.length}
 
# end

# JOSH ANSWER, includes apostrophes that might happen in a word using Regex

def find_longest_word(sentence)
  longest_word = ""

  sentence_array = sentence.split(" ")
  p sentence_array

  sentence_array.each do |word|

    just_letters_string = word.gsub(/\W/, "")
    test_string = longest_word.gsub(/\W/, "")
    word_array = word.split("")

    correct_characters = ""

    word_array.each do |character|
      correct_characters += character if character =~ /(\w|['])/
    end

    if just_letters_string.length > test_string.length
      longest_word = correct_characters
    end
  end
  longest_word
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word that couldn'st be in this phrase or string?")

puts "Your method returned:"
puts result
puts

if result == "couldn'st"
  puts "PASS!"
else
  puts "F"
end