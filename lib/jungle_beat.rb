require "./lib/linked_list.rb"
require "pry"

class JungleBeat

  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    #accepts string, splits string to pass to linked list
  end

  def count
    #is linkedlist a subclass? can we call linkedlists methods simply because we instantiate linked list?
  end

  def play
    # here, we generate string content to use
    # `say #{list.to_string}
  end

  def validate
    #exension, validate words that have more than 1 syllable and reject
    #from say input
  end

  #speed and rate methods, corresponding to `say functions
end
