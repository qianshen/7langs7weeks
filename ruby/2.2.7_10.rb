s = gets 

i = s.to_i

rnd = rand(10)

puts "#{i} > #{rnd}" if i > rnd
puts "#{i} = #{rnd}" if i == rnd
puts "#{i} = #{rnd}" if i < rnd