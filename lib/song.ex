defmodule SongMaker.Song do
  @type verse_number :: non_neg_integer()
  @type verse :: map()
  @type options :: keyword()
  
  @callback range() :: Range.t()
  @callback default_verse() :: verse
  @callback verse_options(verse_number) :: verse
  @callback to_string(verse) :: String.t()
  
  def verse(module, verse_number) do
    module.default_verse 
    |> merge(module.verse_options(verse_number))
    |> module.to_string()
  end
  
  defp merge(verse, options) do
    for option <- options, into: verse, do: option
  end
  
  def all(module) do
    module.range()
    |> Enum.map(&verse(module, &1))
    |> Enum.join("\n")
  end
end