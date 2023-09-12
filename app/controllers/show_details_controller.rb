class ShowDetailsController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Article.find(params[:title])
  end
end
