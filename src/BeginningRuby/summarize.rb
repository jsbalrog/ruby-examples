text = %q{
Ruby is a great programming language. It is object oriented
and has many groovy features. Some people don't like it, but that's
not our problem! It's easy to learn. It's great. To learn more about Ruby,
visit the official Ruby Web site today.
}

# gsub substitutes a single space for all large areas of whitespace
# strip takes off any extra whitespace from the beginning and end
# split splits a string into an array, using whatever is passed
#    as an argument as a boundary character (default is space)
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|\!/)

# sort_by rearranges arrays or hashes into an order. The code block is
#    an expression that defines what to sort by.
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
# We need to get the middle third of the sentences:
#    First get the number of elements in a third
one_third = sentences_sorted.length / 3
#    Next, grab that number of elements from one-third into the array
#    slice() cuts out a section of the array.
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
# select is called on an array--takes a proc that iterates through each
#    element, comparing it to the test code that is the body of the proc.
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }
# Makes the lines readable
puts ideal_sentences.join(". ")
