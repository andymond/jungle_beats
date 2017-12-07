require "./lib/linked_list"
require "./lib/node"
require "minitest/autorun"
require "minitest/pride"
require 'pry'

class LinkedListTest < Minitest::Test

  def test_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_list_head_initialize_returns_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_list_append_data
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_list_head_takes_node_value_after_append
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_list_initialize_next_node_returns_nil
    list = LinkedList.new
    list.append("doop")

    assert_nil nil, list.head.next_node
  end

  def test_count_method_works
    list = LinkedList.new
    list.append("bong")
    list.append("oi")
    list.append("duh")
    list.append("thwerp")
    list.append("doing")
    list.append("ay")
    list.append("noise")

    assert_equal 7, list.count
  end

  def test_to_string_method_works
    list = LinkedList.new
    list.append("doop")
    list.append("woop")
    list.append("bop")

    assert_equal "doop woop bop", list.to_string
  end

  def test_head_next_node
    list = LinkedList.new
    list.append("blap")
    list.append("derp")
    list.append("yo")

    assert_equal "derp", list.head.next_node.data
  end

  def test_prepend_works
    list = LinkedList.new
    list.append("hey")
    list.prepend("ooh")

    assert_equal "ooh", list.head.data
    assert_equal "hey", list.head.next_node.data
  end

  def test_insert_works
    list = LinkedList.new
    list.append("hey")
    list.append("poop")
    list.append("slurp")
    list.insert(1, "ugh")
    #check second time, test more edge cases

    assert_equal "hey", list.head.data
    assert_equal "ugh", list.head.next_node.data
    assert_equal "poop", list.head.next_node.next_node.data
  end

  def test_find_works
    list = LinkedList.new
    list.append("hey")
    list.append("hi")
    list.append("yo")
    list.to_string

    assert_equal "hi ", list.find(1, 1)
    assert_equal "hi yo", list.find(1, 2)
    assert_equal "hey hi yo", list.find(0, 2)
    #refute list.find(1, 3)
  end

  def test_include_works
    list = LinkedList.new
    list.append("wow")
    list.append("eh")
    list.append("duh")

    assert list.include?("wow")
    assert list.include?("eh")
    refute list.include?("buns")
  end

  def test_pop_works
    list = LinkedList.new
    list.append("one")
    list.append("two")
    list.append("three")
    list.append("four")

    assert_equal "four", list.pop
    assert_equal "one two three", list.to_string
  end
end
