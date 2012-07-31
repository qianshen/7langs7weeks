a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]

idx = 1

a.each do |i|
	print "#{i} "
	if idx % 4 == 0
		print "\n"
	end
	idx = idx + 1
end

puts

a.each_slice(4) do |i|
	puts "#{i[0]} #{i[1]} #{i[2]} #{i[3]}"
end