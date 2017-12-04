sum = 0

File.open("day_2_1.txt").each do |line|
  temp_arr = line.split(' ').map{|x| x.to_i}.sort
  
  sum = sum + (temp_arr.last.to_i - temp_arr.first.to_i)
end

puts sum