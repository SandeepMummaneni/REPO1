def hello(name)
  "Hello, ".concat name
end

def starts_with_consonant?(s)
  /[a-z&&[^aeiou]]/i.match(s[0]) != nil
end

def binary_multiple_of_4?(s)
  s =~ /^[01]*1[01]*00$/ 
end

puts hello('Sandeep')
puts starts_with_consonant?('Asd') 
puts starts_with_consonant?('asd')
puts starts_with_consonant?('sad')
puts starts_with_consonant?('sAd')
puts starts_with_consonant?('Bkd')
puts starts_with_consonant?('ckd')
puts starts_with_consonant?('dkd')
puts starts_with_consonant?('#dkd')

puts binary_multiple_of_4?("1100")
puts binary_multiple_of_4?("1101")
puts binary_multiple_of_4?("10000")
puts binary_multiple_of_4?("000")
puts binary_multiple_of_4?("HW1000")
