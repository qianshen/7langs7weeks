#grep

file = ARGV[0]

file = '2.3.9_7.rb' if !file

puts file

File.open(file, 'r') do |io|
	while s = io.gets
		puts s
	end
end