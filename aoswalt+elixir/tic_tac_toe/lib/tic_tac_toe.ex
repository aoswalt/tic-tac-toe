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

  def play, do: for _ <- 1..9, do: nil
  def play([]), do: play()

  def get_placements(moves), do: Enum.zip(moves, Stream.cycle(["X", "O"]))
end
