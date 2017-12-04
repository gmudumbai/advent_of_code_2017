sum = 0

File.open("day_2_2.txt").each do |line|
  temp_arr1 = line.split(' ').map{|x| x.to_i}.sort
  temp_arr2 = temp_arr1.dup
  
  temp_arr1.each_with_index do |divisor, index1|
    temp_arr2.each_with_index do |num, index2|
      unless index1 == index2
        if num%divisor == 0
          sum = sum + (num/divisor)
          break
        end
      end
    end
  end
end

puts sum