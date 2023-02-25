class UsersController < ApplicationController
  
  def index
    @users = User.all
    @count = User.count
    @date = Date.current.strftime("%Y/%m/%d")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:title, :startdate, :enddate, :memo, :allday))
    if @user.save
      redirect_to :users
      flash[:creation] = "スケジュールを作成しました"
    else
      flash[:noncreation] = "スケジュールの作成に失敗しました。以下の項目を確認して下さい。"
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:title, :startdate, :enddate, :memo, :allday))
      flash[:edit] = "スケジュールを更新しました"
      redirect_to :users
    else
      flash[:nonedit] = "スケジュールの作成に失敗しました。以下の項目を確認して下さい。"
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:delete] = "スケジュールを削除しました"
    redirect_to :users
  end
  
end
