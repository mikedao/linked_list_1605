require './test/test_helper'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_list_has_head_when_created
    list = LinkedList.new("Pizza")

    assert_equal "Pizza", list.head.data
    assert_instance_of Node, list.head
  end

  def test_apppend_adds_new_node
    list = LinkedList.new("Pizza")

    list.append("Ice Cream")

    assert_equal "Ice Cream", list.head.next.data
    assert_equal Node, list.head.next.class
  end

  def test_tail_gets_last_item
    list = LinkedList.new("Pizza")
    list.append("Ice Cream")
    list.append("pie")
    list.append("candy")

    result = list.tail.data

    assert_equal "candy", result
  end

  def test_tail_works_with_one
    list = LinkedList.new("pizza")

    result = list.tail.data

    assert_equal "pizza", result
  end

  def test_pop_removes_last_node
    list = LinkedList.new("pizza")
    list.append("Ice Cream")
    list.append("pie")
    list.append("candy")

    result = list.pop

    assert_equal "candy", result
    assert_equal "pie", list.head.next.next.data
    refute list.head.next.next.next
  end

  def test_count_actually_counts
    list = LinkedList.new("pizza")
    assert_equal 1, list.count

    list.append("Taylor Swift")
    assert_equal 2, list.count

    list.append("Selena Gomez")
    assert_equal 3, list.count

    list.pop
    assert_equal 2, list.count
  end



end
