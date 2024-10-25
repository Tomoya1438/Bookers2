class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @books = @user.books 
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
