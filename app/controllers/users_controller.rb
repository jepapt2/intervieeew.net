class UsersController < ApplicationController
  before_action :set_user
  def show
    @a = @user.answers.order('id desc').first(3)
    @q = @user.questions.order('id desc').first(3)
    @fav = @user.favorite_posts.first(3)
  end

  def answers
    @search = @user.answers.ransack(params[:q])
    @as = @search.result.page(params[:page]).per(12)
  end

  def questions
    @search = @user.questions.ransack(params[:q])
    @qs = @search.result.page(params[:page]).per(12)
  end

  def favorites
    @search = @user.favorite_posts.ransack(params[:q])
    @favs = @search.result.page(params[:page]).per(12)
  end

  private
  def set_user
    @user = User.find_by(public_uid: params[:id])
  end
end
