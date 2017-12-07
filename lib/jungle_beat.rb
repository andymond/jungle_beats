require "./lib/linked_list"
require "pry"

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data = data.to_s.split(" ")
      data.each do |word|
        @list.append(word)
      end
    data.join(' ')
  end

  def count
    @list.count
  end

  def play
    `say -r 5 #{list.to_string} `
  end

  def validate
    #exension, validate words that have more than 1 syllable and reject
    #from say input
  end

  #speed and rate methods, corresponding to `say functions
end
