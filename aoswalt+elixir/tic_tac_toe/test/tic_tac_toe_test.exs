defmodule TicTacToeTest do
  use ExUnit.Case
  doctest TicTacToe

  test "new game" do
    assert TicTacToe.play() == [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  end

  test "no moves" do
    assert TicTacToe.play([]) == [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  end

  test "no placements" do
    assert TicTacToe.get_placements([]) == []
  end

  test "one placement" do
    assert TicTacToe.get_placements([3]) == [
      {3, "X"},
    ]
  end

  test "multiple placements" do
    assert TicTacToe.get_placements([3, 5, 4]) == [
      {3, "X"},
      {5, "O"},
      {4, "X"},
    ]
  end

end
