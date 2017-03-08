defmodule TicTacToeTest do
  use ExUnit.Case
  doctest TicTacToe

  test "new game" do
    assert TicTacToe.new() == [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  end

  test "no moves" do
    assert TicTacToe.play([]) == [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  end

  test "one move" do
    assert TicTacToe.play([3]) == [nil, nil, "X", nil, nil, nil, nil, nil, nil]
  end

  test "multiple moves" do
    assert TicTacToe.play([3, 5, 4]) == [nil, nil, "X", "X", "O", nil, nil, nil, nil]
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
