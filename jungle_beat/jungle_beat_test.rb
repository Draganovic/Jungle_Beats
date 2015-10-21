require 'minitest/autorun'
require 'minitest/pride'
require './jungle_beat'


class JungleBeatTest < MiniTest::Test

  def test_initialize_with_head
    jb = JungleBeat.new('deep')
    assert_equal 'deep', jb.head.data
    assert_equal Node, jb.head.class
    assert_equal nil, jb.head.next_node
  end

  def test_can_push_a_new_node
    jb = JungleBeat.new('tee')
    jb.push('bop')
    assert_equal 'tee', jb.head.data
    assert_equal 'bop', jb.head.next_node.data
  end

  def test_it_returns_the_head_as_the_last_link_if_there_are_no_other_nodes
    jb = JungleBeat.new('boop')
    last_link = jb.last_link(jb.head)
    assert_equal 'boop', last_link.data
  end

# test it can find the last link with multiple nodes in the list
  def test_can_find_lastlink_with_mult_nodes_in_list
    jb = JungleBeat.new('beep boop bop')
    jb.count
  end



end

#Jungle Beat Test
