defmodule TicTacToe do
  @moduledoc """
  Documentation for TicTacToe.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TicTacToe.hello
      :world

  """
  def hello do
    :world
  end

  def new, do: for _ <- 1..9, do: nil

  def play(moves) do
    moves
    |> get_placements
    |> map_placements
    |> set_plays
  end

  def get_placements(moves), do: Enum.zip(moves, Stream.cycle(["X", "O"]))

  def map_placements(placements), do: Enum.into(placements, %{})

  def set_plays(placement_map) do
    for i <- 1..9, into: [], do: Map.get(placement_map, i, nil)
  end

end
