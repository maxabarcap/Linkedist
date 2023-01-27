class Node
  attr_accessor :value :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node 
  end
end

class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end
  def append(value)
    tail.next_node = Node.new(value)
  end

  def prepend(value)
    if @head == nil
      Node.new(value)
    else
      self.head = Node.new(value, head)
    end
  end
  def size(head, counter = 1)
    return counter if node.next_node.nil?
    size(node.next_node, counter + 1)
  end
  def tail(node = head)
    return node if node.next_node.nil?
    tail(node.next_node)
  end
  def at(index, node = head)
    return node if index == 0
    at(index - 1, node.next_node)
  end
  def pop(node = head)
    return node.next_node = nil if node.next_node.nil?
    pop(node.next_node)
  end
  def contains?(value, node = head)
    return true if node.value == value
    return false if node.next_node.nil?
    contains?(value, node.next_node)
  end
  def find(value, node = head, counter = 0)
    return counter if node.value == value
    return nil if node.next_node.nil?
    find(value, node.next_node, counter + 1)
  end
  def to_s(node = head, string = "")
    if node.next_node.nil?
      return (string + "( #{node.value} ) -> nil") 
    else
      string += "( #{node.value} ) -> "
    to_s(node.next_node, string)
  end
end
