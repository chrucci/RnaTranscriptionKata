defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  # @spec to_rna([char]) :: [char]
  @spec to_rna(String.t) :: String.t
  def to_rna(dna) do
    String.graphemes(dna)
      |> Enum.map(fn(t) -> nucleotides(t) end)
      |> Enum.join("")
  end

  def nucleotides(indiv) do
    IO.puts "Value passed in is #{indiv}"
    case indiv do
      "C" -> "G"
      "G" -> "C"
      "T" -> "A"
      "A" -> "U"
    end
  end
end
