class Mock
	def self.def_method
		define_method 'my_method' do
			puts 'my_method'
		end
	end
end

class MyMock < Mock
	def_method
end

m = MyMock.new()

# m.my_method
m.my_method