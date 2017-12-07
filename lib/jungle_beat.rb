require "./lib/linked_list"
require "pry"

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data = data.to_s.split(" ") #word to array method?
      data.each do |word|
        validate(word)
      end
    data.join(' ')
    count
  end

  def prepend(data)
    data = data.to_s.split(" ") #word to array method?
      data.each do |word| # refactor to its own method so i can call validate for both
        @list.prepend(word)
      end
    data.join(' ')
    count
  end

  def count
    @list.count
  end

  def all
    @list.to_string
  end

  def play
    `say -r 500 -v Boing #{list.to_string} `
  end

  def validate(data)
    if data.length <= 8
      @list.append(data)
    end
  end
    # append return # of words inserted
    #b... not sure how to do syllables, but you can def restrict string length
    # feed this method to append as a filter
   # ie rate called w -r so rate method is -r takes argument.to_i
   # voice -v data (argument), look up voices that are turned on
   # put them in a case statement or iterate over them in an array
   # if voice in unavailable choose a default and return a 'not this time' msg
  #speed and rate methods, corresponding to `say functions
  #call in play, set play parameters to defaults

  def rate(data)
    
  end

  def voice(data)

  end
end
