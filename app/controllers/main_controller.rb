class MainController < ApplicationController
  def index
    @books = Book.order(:title)
  end

  def new
    @book = Book.new()
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      flash[:success] = 'Book created successfully'
      redirect_to main_path(@book) # Redirect to the newly created book's show page
    else
      flash[:alert] = "Error: Book could not be created."
      render 'new' # Render the 'new' template to show errors
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :price, :date))
    
  
    if @book.save
      flash[:success] = 'Book created successfully'
      redirect_to main_path(@book) # Redirect to the newly created book's show page
    else
      flash[:alert] = "Error: Book could not be created."
      render 'new' # Render the 'new' template to show errors
    end
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :author, :price, :date)
  end
end
