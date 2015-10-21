require 'pry'     # => true
class JungleBeat

  attr_reader :head  # => nil

  def initialize(data)
    @head = Node.new(data)
    @counter = 1
  end                       # => :initialize

  def push(data)
    node = Node.new(data)
    last = last_link(@head)
    last.next_node = node
  end                        # => :push

def last_link(node)
  if node.next_node != nil
    last_link(node.next_node)
    else
      node
    end
  end                          # => :last_link                           # => :last_link

def split(data)
  # data = 'beep boop bop'
  data_array = data.split(' ')
  # data_array = ['beep', 'boop', 'bop']
  # Set @head if necessary
  # Set next_node property on previous node
  previous_node = nil
  data_array.each do |b|
    node = Node.new(b)
    previous_node.next_node unless previous_node.nil?
    previous_node = node
  # Node 1: value: 'beep', next: node2
  # Node 2: value: 'boop', next: node3
  # Node 3: value: 'bop', next: nil
  end

end  # => :split

def count
  node = @head
  until node.next_node == nil
    node = node.next_node
    @counter += 1
  end
end
                          # => :count
end


class Node
attr_accessor :data, :next_node  # => nil

  def initialize(data)
    @data = data
    @next_node = nil
  end                   # => :initialize
end                     # => :initialize
