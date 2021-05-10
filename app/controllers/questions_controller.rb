class QuestionsController < ApplicationController
  before_action :q_find, only: [:show, :edit, :update, :destroy]
  before_action :q_content_post_set, only: [:show, :edit, :update]
  before_action :content_set
  
  def index
    @search = Question.ransack(params[:q])
    @qs = @search.result.page(params[:page]).per(12)
  end

  def show
  end

  def new
    if user_signed_in?
      @q = current_user.questions.new
      q_initial_content_post_set
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    q_initial_content_post_set
    if @q.user == current_user
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    else
      redirect_to root_path
    end
  end

  def update
    q_initial_content_post_set
    if @q.update_attributes(q_params)
      redirect_to q_show_url(@q)
    else
      render :edit
    end
  end

  def destroy
    if @q.user == current_user
      @q.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


 # def confirm
  #   @q = current_user.questions.new(q_params)
  #   q_content_post_set
  #   q_initial_content_post_set
  #   render :new if @q.invalid?
  # end

  def create
    @q = current_user.questions.new(q_params)
    q_initial_content_post_set
    if params[:back].present?
      render :new
      return
    end

    if @q.save
      flash[:success] = 'あるあるを投稿しました。'
      redirect_to q_show_url(@q)
    else
      flash.now[:danger] = 'メッセージの投稿に失敗しました。'
      render :new
    end
  end

  def res

  end

  private
  def q_params
    params.require(:question).permit(:title, @content_array, :tag_list)
  end

  def q_find
    @q = Question.find_by(public_uid: params[:id])
  end
  
end
