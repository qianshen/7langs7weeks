module MyModule
	def self.included(base)
		# base.extend MyModule
		def my_method2
			puts 'me_method2'
		end
	end

	def def_method
		puts 'def_method'
		extend M1
	end	
end

module M1
	def my_method
		puts 'my method'
	end
end

class Mock
	include MyModule

end

m = Mock.new
m.def_method
m.my_method
m.my_method2