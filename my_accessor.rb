class Class
	def add_accessor(accessor_name)
		self.class_eval %Q{
			def #{accessor_name}
				@#{accessor_name}
			end

			def #{accessor_name}=(value)
				@#{accessor_name} = value
			end
		}
	end
end

class Person 
end

puts "Create a person: "
person = Person.new
puts "person created"
sleep 2

puts "add_accessor"
Person.add_accessor('name')
puts "Added name to person class"
sleep 2

person.name = "Harry"
puts "The persons name is #{person.name}"