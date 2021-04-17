# review_file = File.open("reviews.txt")
# puts review_file.class
# lines = review_file.readlines
# puts "Line 4: #{lines[3]}"
# puts "Line 1: #{lines[0]}"
# review_file.close
####################################################
# review_file = File.open("reviews.txt")
# lines = review_file.readlines
# review_file.close
# def yield_number
#   yield 4
# end
# array=[1,2,3]
# yield_number { |number| array << number }
# p array
######################################################
# sum = 0
# [1, 2, 3].each { |number| sum += number }
# puts sum
#
# contents=[]
# File.open("reviews.txt") do |file|
#   contents = file.readlines
# end
# puts contents
######################################################################
# lines = []
#
# File.open("reviews.txt") do |review_file|
#   lines = review_file.readlines
# end
# puts lines.length
#
# # # relevant_lines = []
# relevant_lines = lines.find_all { |line| line.include?("Truncated") }
# puts relevant_lines
####################################################
# lines.each do|line|
#   if line.include?("Truncated")
#     relevant_lines << line
#   end
# end
# puts relevant_lines
#
# def triple_block_result
#   puts 3 * yield
# end
# triple_block_result {3}
# triple_block_result{15}
# triple_block_result do 2345
# end
##################################################################
# def greet
#   puts "hello, #{yield}!"
# end
# greet {"Liz"}
#
# def make_casserole
#   puts "Preheat oven to 375 defrees"
#
# end
#
# p ["1", "800", "555", "0199"].find_index("800")
# p ["his", "her"].find_index("his")
# p ["apple", "avocado", "anvil"].find_index("anvil")
# ########################################################################

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

lines = []
File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
    "'#{adjective.capitalize}'"
end
  puts "The critics agree, Truncated is:"
puts adjectives