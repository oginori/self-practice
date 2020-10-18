class BooksController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :summary, :date_of_publication, :author_id)
  end

  def set_params
    @book = Book.find(params[:id])
  end
end
