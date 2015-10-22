require 'pry'
class JungleBeat

  attr_reader :head

  def initialize(data)
    @data = data
    if @data
      @data.split.each do |element|
        push(element)
      end
    end
  end

  def push(data)
    node = Node.new(data)
    @head = node if @head == nil
    last = last_link(@head)
    last.next_node = node unless last == node
  end

  def all
    @data
  end

  def count
    node = @head
    if node
      counter = 1
      until node.next_node == nil
        node = node.next_node
        counter += 1
      end
      counter
    else
      0
    end
  end

  def play
    `say -r 500 -v Boing #{@data}`
  end

  def last_link(node = nil)
    if node && node.next_node != nil
      last_link(node.next_node)
    else
      node
    end
  end
end

class Node
attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end
