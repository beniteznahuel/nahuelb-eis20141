# char_counterrb

class CharCounter

	def initialize
		@counter = Hash.new

	def count(string)
		string.each do |char|
			if !(counter.has_key?(char))
				counter[char => string.count(char)]
