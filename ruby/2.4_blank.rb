class NilClass
	def blank?
		return true
	end
end

class String
	def blank?
		return self.size == 0
	end
end

puts 'abc'.blank?