num_valid = 0

def is_valid(input_array)
  input_array.uniq.length == input_array.length
end

File.open("day_4_1.txt").each do |line|
  input_as_array = line.split(' ')
  num_valid += 1 if is_valid(input_as_array)
end

puts num_valid
