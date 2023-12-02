defmodule Helpers do
  # one.txt|example_one.txt
  @elixir_eol "\n"
  @spec read_input(binary) :: [binary]
  def read_input(file) do
    File.read!(Path.join(__DIR__, "../inputs/#{file}"))
    |> String.split(@elixir_eol)
  end
end
