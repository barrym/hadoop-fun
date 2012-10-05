#!/usr/bin/ruby
ARGF.each do |line|
  line.gsub(/[\.!,]/, "").split.each do |word|
    # puts "LongValueSum:#{word.downcase}\t1"
    # puts "#{$$}:#{word.downcase}\t1"
    puts "#{word.downcase}\t1"
  end
end
