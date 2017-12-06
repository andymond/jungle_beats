require "./lib/node"
require "minitest/autorun"
require "minitest/pride"

class NodeTest < Minitest::Test

  def test_node_returns_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_node_initialize_with_next_node_nil
    node = Node.new("bing")

    assert_nil nil, node.next_node
  end
end
