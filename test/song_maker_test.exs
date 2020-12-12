defmodule SongMakerTest do
  use ExUnit.Case
  doctest SongMaker

  test "greets the world" do
    assert SongMaker.hello() == :world
  end
end
