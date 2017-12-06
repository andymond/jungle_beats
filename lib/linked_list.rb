#refactor until loops into one method
require "./lib/node"
require "pry"

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def to_string
    sounds = ''
    current_node = @head
    until current_node.next_node.nil?
      sounds << current_node.data.concat(' ')
      current_node = current_node.next_node
    end
    sounds << current_node.data
  end

  def count
    if @head == nil
      count = 0
    else
      count = 1
      current_node = @head
      until current_node.next_node.nil?
        count += 1
        current_node = current_node.next_node
      end
    end
    count
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    return data
  end

  def prepend(data)
    if  @head.nil?
      @head = Node.new(data)
    else
      temp_node = @head
      @head = Node.new(data)
      @head.next_node = temp_node
    end
  end

  def insert(index, data)
    if index == 0
      prepend(data)
    else
      current_node = @head
      (index - 1).times do
        current_node = current_node.next_node
      end
      shifted_node = current_node.next_node
      inserted_node = Node.new(data)
      inserted_node.next_node = shifted_node
      current_node.next_node = inserted_node
    end
  end

  def find(index, number_of_nodes)
      foundwords = ''
      current_node = @head
    if index == 0
      foundwords << current_node.data
      number_of_nodes.times do
        current_node = current_node.next_node
        foundwords << current_node.data
      end
    else
      index.times do
        current_node = current_node.next_node
      end
      foundwords << current_node.data
      (number_of_nodes - 1).times do
        current_node = current_node.next_node
        foundwords << current_node.data
      end
    end
    foundwords
  end

  def include?(data)
    #iterate through list
    #if current_node.next_node.data == data
    #return true
    #else
    #return false
  end

  def pop
    #if current_node.next_node.next_node == nil
    #current.next_node = nil
  end



end
