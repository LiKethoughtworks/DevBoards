class BoardsController < ApplicationController
  def new
  end

  def index
    @boards = Board.all
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    redirect_to boards_path
  end

  def show
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to @board
  end

  private
  def board_params
    params.require(:post).permit(:text)
  end



end
