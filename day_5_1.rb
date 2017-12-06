num_steps = 0

number_array = File.readlines('day_5_1.txt').map {|line| line.strip.to_i}

index = number_array[0]
while index >= 0 && index < number_array.length
  next_index = number_array[index]
  number_array[index] += 1
    
  index += next_index
  num_steps += 1
end

puts num_steps