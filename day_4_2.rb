num_valid = 0

def is_valid(input_array)
  sorted_letters_array = input_array.map{|x| x.split('').sort!.join}
  
  sorted_letters_array.uniq.length == sorted_letters_array.length
end

File.open("day_4_2.txt").each do |line|
  input_as_array = line.split(' ')
  num_valid += 1 if is_valid(input_as_array)
end

puts num_valid
