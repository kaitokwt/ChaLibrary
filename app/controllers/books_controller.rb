class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update]
  before_action :move_to_index, except: [:index, :show]

  def index
    @books = Book.with_attached_image
  end

  def show
    @books = Book.with_attached_image
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  private
  def book_params
    params.require(:book).permit(:title, :image).merge(user_id: current_user.id)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end
