class Array
	
	def my_inject(result =nil, &block)
		return nil if self.empty?
		return self[0] if self.length==1
		if block_given?
			if result.nil?
				result = self.first
				result = yield(result,self[1..self.length-1].my_inject(&block))
			else
				result = yield(result,self.my_inject(&block))
			end

		else
			raise RuntimeError
		end
	end

end