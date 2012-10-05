#!/usr/bin/ruby

counts = Hash.new(0)

ARGF.each do |line|
  word, count = line.split("\t")
  counts[word] += count.to_i
end

counts.sort_by {|k,v| k}.each do |word, total|
  # puts "#{$$} -> #{word}\t#{total}"
  puts "#{word}\t#{total}"
end

# counts.each do |word, total|
#   # puts "#{$$} -> #{word}\t#{total}"
#   puts "#{word}\t#{total}"
# end
