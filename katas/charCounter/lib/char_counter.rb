class CharCounter

	def self.count(palabra)
		dic = Hash.new
		if(palabra==nil)
			dic
		else
			palabra.each_char{ |letra| dic[letra] = palabra.count(letra)}
			dic
		end
	end
	
end