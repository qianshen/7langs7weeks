module ToFile
	def filename
		"object_#{self.object_id}.txt"
	end

	def to_f
		File.open(filename, 'w') do |en|
			en.write(to_s)
		end
	end
end

class Person
	include ToFile
	attr :name

	def initialize(name)
		@name = name
	end

	def to_s
		name
	end
end

Person.new('shen').to_f