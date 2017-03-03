class TodoList

	@list = nil
	def initialize(array)
		@list = array
	end

	def get_items
		p @list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(x)
		p @list[x]
	end
end