class BooksController < ApplicationController
  def index
  end

  def add
    @book = Book.new(params.require(:book).permit(:name))
    @book.save
    redirect_to root_path
  end
end
