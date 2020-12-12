defmodule SongMaker do
  alias SongMaker.Song

  def song(:beer), do: Song.all(Song.Beer)
  def song(:ducks), do: Song.all(Song.Ducks)
end
