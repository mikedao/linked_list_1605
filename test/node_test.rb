require './test/test_helper'
require './lib/node.rb'

class NodeTest < Minitest::Test

  def test_a_node_can_hold_data
    node = Node.new("pizza")

    assert_equal "pizza", node.data
  end

  def test_a_node_can_hold_different_data
    node = Node.new("ice cream")

    assert_equal "ice cream", node.data
  end

  def test_a_node_has_a_nil_next_node_by_default
    node = Node.new("Pizza")

    refute node.next
  end

  def test_a_node_can_hold_another_node_as_next
    node = Node.new("Pizza")
    node2 = Node.new("Ice Cream")

    node.next = node2

    assert_equal "Ice Cream", node.next.data
    assert node.next.is_a?(Node)
    assert_equal node2, node.next
  end
end
