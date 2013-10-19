def sum(array)
  return 0 if array.empty?
  r = 0
  array.each { |x| r = r + x }
  return r
  #array.inject {|sum, n| sum + n } 
end

def max_2_sum(array)
  array.sort!
  return sum(array.pop(2))
end

def sum_to_n?(array, n)
  if array.empty?
    return false if n != 0
    return true
  end
  r = 0
  array.each { |x| r = r + 1 }
  for j in 1..r do
    for i in j..r do
      if i != j
        if sum([array[i-1],array[j-1]]) == n
          return true
        end
      end
    end
  end
  return false
  #(arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end


puts "sum([]) == 0"
puts sum([]) == 0
#puts "sum([1,2,3]) == 6"
#puts sum([1,2,3]) == 6
#puts "sum([1,2,4]) == 6"
#puts sum([1,2,4]) == 6
puts "max_2_sum([]) == 0"
puts max_2_sum([]) == 0
puts "max_2_sum([1799]) == 1799"
puts max_2_sum([1799]) == 1799
puts "max_2_sum([1,67,2,33,33]) == 100"
puts max_2_sum([1,67,2,33,33]) == 100

puts "sum_to_n([],1) == 0"
puts sum_to_n?([],1) == true

puts "sum_to_n([],0) == 0"
puts sum_to_n?([],0) == true


puts "sum_to_n([1,2,3,4],6) == 0"
puts sum_to_n?([1,2,3,4],6) == true

puts "sum_to_n([1,2,3,4],5) == 0"
puts sum_to_n?([1,2,3,4],5) == true

puts "sum_to_n([1,2,3,4],7) == 0"
puts sum_to_n?([1,2,3,4],7) == true

puts "sum_to_n([1,2,3,4],3) == 0"
puts sum_to_n?([1,2,3,4],3) == true

puts "sum_to_n([1,2,3,4],3) == 0"
puts sum_to_n?([1,2,3,4],3) == true

puts "sum_to_n([1,2,3,4],2) == 0"
puts sum_to_n?([1,2,3,4],2) == true

puts "sum_to_n([1,2,3,4],8) == 0"
puts sum_to_n?([1,2,3,4],8) == true
