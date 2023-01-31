class UsersController < ApplicationController
  before_action :authenticate_user!
     #(ログインしていない状態で他のページに遷移しようとした場合、ログインページに繊維する)
  before_action :is_matching_login_user, {only: [:edit,:update,:destroy]}
     #(ログインユーザー以外の情報を遷移しようとした時に制限をかける)
  
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books 
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
#   def create
#     user = User.new(user_params)
#     user.save
#     redirect_to user_path(book.id) 
#     redirect_to book_path(@book.id), notice: "You have created book successfully."
# x end
  
   def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user.id) , notice: "You have created book successfully." 
    else
      render :edit
    end
   end
   
   
   private
  # ストロングパラメータ
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
   def is_matching_login_user
    user_id = params[:id].to_i
    unless user_id == current_user.id
    redirect_to user_path(current_user)
    end
   end
   
end