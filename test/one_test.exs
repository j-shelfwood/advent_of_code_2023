defmodule OneTest do
  use ExUnit.Case

  test "solve/1/example returns the correct sum of calibration values" do
    input = Helpers.read_input("example_one.txt")
    assert One.solve(input) == 142
  end

  # Now with one.txt and simply assert it returns a value & show it
  test "solve/1/puzzle returns the correct sum of calibration values" do
    input = Helpers.read_input("one.txt")

    assert One.solve(input) == 54239
  end
end
