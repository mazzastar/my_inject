class Array
	
	def my_inject(*initial, &block)
		array = initial + self
		return nil if array.empty?
		return array[0] if array.length==1		
		result = array[0]
		result = yield(result,array[1..-1].my_inject(&block))
	end


	def my_inject2(*initial)
		array = initial + self
		return nil if array.empty?
		result = array[0]
		return array[0] if array.length==1
		array[1..-1].each{|element| result = yield(result, element)}
		result
	end

end



# puts [1].my_inject2{|x,y| x-y}.inspect

puts [2].my_inject(3){|x,y| x*y}.inspect
puts [2].inject(3){|x,y| x*y}.inspect