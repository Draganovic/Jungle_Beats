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

  def test_initialize_without_head
    # don't give head data when creating,
    # so head should be nil and
    # count should be 0
    jb = JungleBeat.new(nil)
    assert_equal nil, jb.head
    assert_equal 0, jb.count

  end

  def test_pushing_onto_empty_list
    # create list with no head data
    # push data onto that list
    # pushed data should become the head data
    # count should be 1
    jb = JungleBeat.new("poop")
    assert_equal "poop", jb.head.data
    assert_equal 1, jb.count
  end

  def test_initialize_with_multiple_words
    # init with "dee dee dee"
    # count should be 3
    jb = JungleBeat.new("doop bap zip")
    assert_equal 3, jb.count
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

  def test_last_link_is_nil_for_empty_test
    jb = JungleBeat.new(nil)
    assert_equal nil, jb.last_link
  end

  def test_can_find_lastlink_with_mult_nodes_in_list
    jb = JungleBeat.new('beep boop bop')

    assert_equal 'bop', jb.last_link(jb.head).data
  end

end

#Jungle Beat Test
