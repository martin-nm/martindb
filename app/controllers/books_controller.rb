class BooksController < ApplicationController

  def index
    @books = Books.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path
    else
      redirect_to book_path(@book)
    end

private

  def book_params
    params.require(:book).permit(:book_title, :book_author, :read, :read_date, :rating, :recco_by)
  end

end
