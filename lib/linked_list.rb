require './lib/node'

class LinkedList
  attr_reader :head

  def initialize(data)
    @head   = Node.new(data)
  end

  def append(data)
    tail.next = Node.new(data)
  end

  def pop
    to_return = almost_tail.next
    almost_tail.next = nil
    to_return.data
  end

  def almost_tail
    current = @head
    while current.next.next
      current = current.next
    end
    current
  end

  def tail
    current = @head
    while current.next
      current = current.next
    end
    current
  end

  def count
    count = 1
    current = @head
    while current.next
      count += 1
      current = current.next
    end
    count
  end

end
