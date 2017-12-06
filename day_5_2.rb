num_steps = 0

number_array = File.readlines('day_5_2.txt').map {|line| line.strip.to_i}

index = number_array[0]
while index >= 0 && index < number_array.length
  next_index = number_array[index]
  
  if next_index > 2
    number_array[index] -= 1
  else
    number_array[index] += 1
  end
    
  index += next_index
  num_steps += 1
end

puts num_steps