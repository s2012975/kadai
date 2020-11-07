class BooksController < ApplicationController

  def new
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "Book was successfully createsd"
      redirect_to book_path(@book.id)
    else
      @book = Book.all
      render :new
    end
  end

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
    @books = Book.all
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "Book was successfully updated"
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed"
    redirect_to new_book_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end