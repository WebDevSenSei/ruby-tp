def put_arr arr
    return "#{arr}"
end

names = Array.new(4, "mac")
puts "#{names}"

puts '---------------------'

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

puts nums.fetch(100, '100')
puts "#{nums}"

puts nums.first
puts nums.last

puts '---------take and drop------------'
 
puts "#{nums.take(3)}"
puts "#{nums.drop(3)}"
# ADDGING items to arrays: push unshift insert 
# Removing Items from an Array: pop shift delete_at delete
#   remove nil: arr.compact
# 

puts '---------uniq------------'

puts put_arr [2,3,5,2,3,5,10].uniq
words = %w[first second third fourth fifth sixth "last item"]
words.push "I love Ruby"
p words.join(' ')
p words.reverse

puts put_arr [2,3,5,2,3,5,10].uniq

puts '---------Public Instance Method------------'

p [ 1, 1, 3, 5 ] & [ 3, 2, 1 ] 
p [1,2,3] * "0"
p [1,3,4,6] + [3,5,7,8]
p [1,3,4,6] - [3,5,7,8]
p words.all?


puts '--------bsearch-----------------------------'

p words.clear
p words
a = [1,2,3,4,5]

puts '--------collect & map-----------------------------'

p a.collect.with_index { |x, i| x * i }
p a.map.with_index {|x,i| x * i}

puts '--------collect & map-----------------------------'

a = [1,2,3,4,5]

p a.combination(1).to_a
p a.combination(2).to_a
p a.combination(3).to_a
p a.combination(4).to_a
p a.combination(5).to_a
p a.combination(6).to_a

puts '--------compact-----------------------------'

a = [1, nil, 2, nil, 3, nil,]

p a
p a.compact
p ["a"].compact!

puts '--------concat-----------------------------'

p a.concat([4])
p a

puts '--------count-----------------------------'

p a.count
p a.count(nil)
p a.count {|x| x && x%2 == 0}

puts '--------cycle-----------------------------'

p a.cycle(2).to_a
a.cycle(2) { |x| p x.nil? ? 123 : x }

puts '--------delete-----------------------------'

a.delete(nil)
a.delete_at(0)
p a
a.delete_if { |x| x % 2 == 1  }
p a

puts '--------difference-----------------------------'

p a.difference([1,4,5])
p a - [1,4,5]

puts '--------dig-----------------------------'

a = [[1,[2,3]],4]
# p a.dig(0,0)
p a.dig(0,0)

puts '--------drop-----------------------------'

a = [1,3,5,7,9,2,4,6,8,0]
p a.drop(1)
p a.drop_while { |i| i < 7}

puts '--------each-----------------------------'
ret = []
a.each { |x| ret.push(x + 1)  }
p ret 
ret = []
p a.each_index { |x| ret.push(x) }
p ret