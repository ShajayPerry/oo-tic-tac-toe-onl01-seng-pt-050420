class TicTacToe
  def initialize (board = nil)
    @board = board || Array.new(9, " ")
  end

  WIN_COMBINATIONS = [
    [0, 1, 2], # Top row
    [3, 4, 5], # Middle row
    [6, 7, 8], # Bottom
    [0, 3, 6], # Left column
    [1, 4, 7], # Middle column
    [2, 5, 8], # Right column
    [0, 4, 8], # Left/Right diagonal
    [2, 4, 6] # Right/Left diagonal
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
def input_to_index(input)
    @index = input.to_i - 1
  end

  def move(index, token = "X")
    if valid_move?(index)
      @board[index] = token
    end
  end
def position_taken?(index)
    !(@board[index] == " " || @board[index] == "" || @board[index] == nil)
  end

def valid_move?(index)
    return !position_taken?(index) && index > 0 && index < 9
  end

def turn_count
    counter = 0
    @board.each do |pos|
        if pos == "X" || pos == "O"
          counter += 1
        end
    end
    counter
  end

def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  









end 