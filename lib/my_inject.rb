class Array


	def my_inject(*initial)
		array = initial + self
		return nil if array.empty?
		return array[0] if array.length==1
		result = array[0]
		array[1..-1].each{|element| result = yield(result, element)}
		result
	end
end