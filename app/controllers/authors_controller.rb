class AuthorsController < ApplicationController



  def index
    book = Book.find(params[:book_id])
    @authors = book.authors
  end

  def show
    book = Book.find(params[:book_id])
    @author = book.authors.find(params[:id])
  end

  def edit

  end

  def create
    @book = Book.find(params[:book_id])
    @author = @book.authors.create(author_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:book_id])
    @author = @book.authors.find(params[:id])
    @author.destroy
    redirect_to book_path(@book)
  end

  private
    def author_params
      params.require(:author).permit(:name, :id)
    end

end
