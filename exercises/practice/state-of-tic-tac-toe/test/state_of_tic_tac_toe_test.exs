defmodule StateOfTicTacToeTest do
  use ExUnit.Case

  describe "Won games" do
    # @tag :pending
    test "Finished game where X won via column victory (1)" do
      board = """
      XOO
      X..
      X..
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via column victory (2)" do
      board = """
      OXO
      .X.
      .X.
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via column victory (3)" do
      board = """
      OOX
      ..X
      ..X
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via column victory (1)" do
      board = """
      OXX
      OX.
      O..
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via column victory (2)" do
      board = """
      XOX
      .OX
      .O.
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via column victory (3)" do
      board = """
      XXO
      .XO
      ..O
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via row victory (1)" do
      board = """
      XXX
      XOO
      O..
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via row victory (2)" do
      board = """
      O.O
      XXX
      .O.
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via row victory (3)" do
      board = """
      .OO
      O.X
      XXX
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via row victory (1)" do
      board = """
      OOO
      XXO
      XX.
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via row victory (2)" do
      board = """
      XX.
      OOO
      X..
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via row victory (3)" do
      board = """
      XOX
      .XX
      OOO
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via diagonal victory (1)" do
      board = """
      XOO
      .X.
      ..X
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via diagonal victory (2)" do
      board = """
      O.X
      OX.
      X..
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via diagonal victory (3)" do
      board = """
      OXX
      OOX
      X.O
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where O won via diagonal victory (1)" do
      board = """
      ..O
      .OX
      OXX
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via a row and a column victory" do
      board = """
      XXX
      XOO
      XOO
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end

    @tag :pending
    test "Finished game where X won via two diagonal victories" do
      board = """
      XOX
      OXO
      XOX
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :win}
    end
  end

  describe "Drawn games" do
    @tag :pending
    test "Draw (1)" do
      board = """
      XOX
      XXO
      OXO
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :draw}
    end

    @tag :pending
    test "Draw (2)" do
      board = """
      XXO
      OXX
      XOO
      """

      {:ok, :draw}

      assert StateOfTicTacToe.gamestate(board) == {:ok, :draw}
    end
  end

  describe "Ongoing games" do
    @tag :pending
    test "Ongoing game (1)" do
      board = """
      ...
      X..
      ...
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :ongoing}
    end

    @tag :pending
    test "Ongoing game (2)" do
      board = """
      O..
      .X.
      ...
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :ongoing}
    end

    @tag :pending
    test "Ongoing game (3)" do
      board = """
      X..
      .XO
      OX.
      """

      assert StateOfTicTacToe.gamestate(board) == {:ok, :ongoing}
    end
  end

  describe "Invalid boards" do
    @tag :pending
    test "Invalid board (1)" do
      board = """
      XX.
      ...
      ...
      """

      assert StateOfTicTacToe.gamestate(board) == {:error, "Wrong turn order: X went twice"}
    end

    @tag :pending
    test "Invalid board (2)" do
      board = """
      OOX
      ...
      ...
      """

      assert StateOfTicTacToe.gamestate(board) == {:error, "Wrong turn order: O started"}
    end

    @tag :pending
    test "Invalid board (3)" do
      board = """
      XXX
      OOO
      ...
      """

      assert StateOfTicTacToe.gamestate(board) ==
               {:error, "Impossible board: game should have ended after X won"}
    end
  end
end
