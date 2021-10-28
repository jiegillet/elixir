defmodule SquareRoot do
  defguardp is_positive(n) when n >= 0

  defmacro unless_equal_to(guess, goal, do: expr) do
    quote do
      if unquote(guess) == unquote(goal) do
        unquote(goal)
      else
        unquote(expr)
      end
    end
  end

  def calculate(1), do: 1

  def calculate(radicand) do
    guess = div(radicand, 2)
    do_calculate(radicand, guess)
  end

  defp do_calculate(radicand, guess) when is_positive(guess) do
    new_guess =
      div(guess + div(radicand, guess), 2)
      |> IO.inspect()

    unless_equal_to new_guess, guess do
      do_calculate(radicand, new_guess)
    end
  end
end
