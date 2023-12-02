defmodule One do
  # 1abc2
  # pqr3stu8vwx
  # a1b2c3d4e5f
  # treb7uchet
  # Solve accepts input (String.split("\n") of the puzzle input.txt)
  @spec solve([binary]) :: integer
  def solve(input) do
    input
    |> Enum.map(fn line -> get_coordinate_from_line(line) end)
    |> Enum.map(fn coordinate -> String.to_integer(coordinate) end)
    |> Enum.sum()
  end

  def get_coordinate_from_line(line) do
    characters =
      line
      |> String.to_charlist()
      |> Enum.filter(fn char -> char in ?0..?9 end)

    first_coordinate = hd(characters)

    last_coordinate =
      characters
      |> Enum.reverse()
      |> hd()

    [first_coordinate, last_coordinate] |> List.to_string()
  end
end
