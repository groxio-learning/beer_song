defmodule SongMaker.Song.Ducks do
  def default_verse do
    %{
      animal: "ducks", 
      next_animal: "ducks"
    }
  end
  
  def verse_options(0) do
    [
      number: "no", 
      next_number: 5
    ]
  end
  def verse_options(1) do
    [
      animal: "duck", 
      number: 1, 
      next_number: "No"
    ]
  end
  def verse_options(number) do
    [
      number: number, 
      next_number: number - 1
    ]
  end
  
  def to_string(verse) do
    """
    #{verse.number |> Kernel.to_string |> String.capitalize} baby #{verse.animal} went out to play, 
    over the hills and far away. 
    Mother duck says, quack quack quack quack, 
    #{how_many(verse.next_number, verse.next_animal)} came back.
    """
  end  
  
  # converter helpers
  defp how_many(0, animal), do: "but none of the little baby #{animal}"
  defp how_many(5, animal), do: "and all of the five baby #{animal}"
  defp how_many(n, animal), do: "but only #{n} little baby #{animal}"
  
  def range, do: 5..0
end