defmodule SongMaker.Song.Beer do
  def default_verse do
    %{
      container: "bottles", 
      next_container: "bottles", 
      number: 99, 
      stuff: "beer",
      where: "on the wall", 
      action: "Take one down and pass it around,",
      next_number: 98
    }
  end
  
  def verse_options(0) do
    [
      number: "No", 
      next_number: 99
    ]
  end
  def verse_options(1) do
    [
      container: "bottle", 
      next_container: "bottles",
      number: 1, 
      next_number: "No"
    ]
  end
  def verse_options(6) do
    [
      container: "six packs", 
      next_container: "six packs",
      number: 6, 
      next_number: 5
    ]
  end
  def verse_options(verse_number) do
    [
      number: verse_number, 
      next_number: verse_number - 1
    ]
  end
  
  def to_string(verse) do
    """
    #{verse.number} #{verse.container} of #{verse.stuff} #{verse.where}, #{verse.number} #{verse.container} of #{verse.stuff}.
    #{verse.action} #{verse.next_number} #{verse.next_container} of #{verse.stuff} #{verse.stuff}.
    """
    |> String.capitalize
  end  
  
  def range, do: 99..0
end