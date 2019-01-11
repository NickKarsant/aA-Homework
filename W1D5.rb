class Stack
  def initialize
		ivar = []
  end

  def push(el)
		ivar.push(el)
  end

  def pop
    ivar.pop
  end

  def peek
    ivar.last
  end
end


class Queue

	def enqueue(el)
		shift(el)
	end

	def dequeue
		self.pop
	end

	def peek
		
	end


end