require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_it_exists
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    assert_instance_of Joke, joke
  end

  def test_joke_has_id
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    assert_equal 1, joke.id
  end

  def test_joke_can_have_different_id
    joke = Joke.new(2, "What do you call a fake noodle?", "An Impasta.")

    assert_equal 2, joke.id
  end

  def test_joke_has_setup
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    assert_equal "Why did the strawberry cross the road?", joke.setup
  end

  def test_joke_can_have_different_setup
    joke = Joke.new(2, "What do you call a fake noodle?", "An Impasta.")

    assert_equal "What do you call a fake noodle?", joke.setup
  end

  def test_joke_has_punchline
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    assert_equal "Because his mother was in a jam.", joke.punchline
  end

  def test_joke_can_have_different_punchline
    joke = Joke.new(2, "What do you call a fake noodle?", "An Impasta.")

    assert_equal "An Impasta.", joke.punchline
  end
end
