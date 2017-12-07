require './lib/jungle_beat'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_jungle_beat_exists
    jb = JungleBeat.new

    assert_instance_of JungleBeat, jb
  end

  def test_jungle_beat_can_access_linked_list
    jb = JungleBeat.new

    assert_nil jb.list.head
  end

  def test_append_words
    jb = JungleBeat.new

    assert_equal 3, jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_append_works
    jb = JungleBeat.new


    assert_equal 3, jb.append("woo hoo shu")
  end

  def test_prepend_works
    jb = JungleBeat.new

    assert_equal 3, jb.prepend("woo hoo shu")
  end

  def test_all_works
    jb = JungleBeat.new
    jb.append("woo hoo shu doo rai scroo")

    assert_equal "woo hoo shu doo rai scroo", jb.all
  end

  def test_play_works
    jb = JungleBeat.new
    jb.append("holy moly guacamoly lee lee loo la la la boop beep")

    jb.play
  end

  def test_validate_works
    jb = JungleBeat.new

    assert_equal 0, jb.append("Mississipi")
    assert_equal 1, jb.append("boop")
    assert_equal 3, jb.append("boop bap")
  end


  def test_rate_works
    skip
    jb = JungleBeat.new

  end

  def test_voice_works
    skip
    jb = JungleBeat.new

  end


end
