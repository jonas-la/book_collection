class BooksController < ApplicationController

    # In your controller action (e.g., BooksController#create)
  def index
    # @book = Book.new(params.require(:book).permit(:title, :author, :price, :date))
    @book = Book.new()
  
    if @book.save
      flash[:success] = 'Book created successfully'
      redirect_to root_path # Redirect to the newly created book's show page
    else
      render 'new' # Render the 'new' template to show errors
    end
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :author, :price, :date)
  end

end
