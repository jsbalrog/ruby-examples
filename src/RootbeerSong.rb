word = "bottles"
99.downto(1) { |num|
  puts "#{num} #{word} of rootbeer on the wall."
  puts "#{num} #{word} of rootbeer."
  puts "Take one down, pass it around."
  if num-1 > 0
    if num-1 == 1
      word = "bottle"
    end
    puts "#{num-1} #{word} of rootbeer on the wall."
  else
    puts "No more bottles of rootbeer on the wall."
  end
}
