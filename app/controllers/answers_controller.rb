class AnswersController < ApplicationController
  before_action :q_find, only: [:new, :create]
  before_action :a_find, only: [:show, :edit, :update, :destroy]
  before_action :content_set, :head_set, :question_set
  before_action :a_content_post_set, only: [:show, :edit, :update]
  before_action :q_content_post_set, only: [:new, :create]
  before_action :thumbnail, only: [:show, :edit, :update]
  before_action :a_question_set, only: [:show, :edit, :update]
  before_action :a_head_post_set, only: [:show, :edit, :update]

  def index
    @search = Answer.ransack(params[:q])
    @as = @search.result.page(params[:page]).per(12)
  end

  def show
    description(@a,200)
    if @a.image.present?
      @twitter_card = @a.image
    else 
      @twitter_card = 'https://res.cloudinary.com/hgxti2nqv/image/upload/v1/' + @a.select_image
    end
  end

  def new
    if user_signed_in?
      @a = current_user.answers.new
      @select_image = image
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @a = current_user.answers.new(a_params)
    @select_image = image
    if params[:back].present?
      render :new
      return
    end

    if @a.save
      redirect_to a_show_url(@a)
    else
      render :new
    end
  end

  def edit
    if @a.user == current_user
      @select_image = image
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @select_image = image
    if @a.update_attributes(a_params)
      if @a.saved_change_to_select_image?
        @a.update_attributes( image: "")
      end
      redirect_to a_show_url(@a)
    else
      render :edit
    end
  end

  def destroy
    if @a.user == current_user
      @a.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

    # if @a.saved_change_to_image?
    #   @a.select_image = ''
    #   @a.save
    # else @a.seved_change_to_select_image?
    #   @a.image.destroy
    # end

  private
  def a_params
    params.require(:answer).permit(:title, :answerer, :overview, @content_array, @head_array, @question_array, :image, :image_cache, :select_image, :question_id, :tag_list)
  end

  def q_find
    @q = Question.find_by(public_uid: params[:id])
  end

  def a_find
    @a = Answer.find_by(public_uid: params[:id])
  end

  def image 
    a = []
    for i in 1..18 do
      a.push('free_image/' + i.to_s + '.jpg')
    end
    for i in 1..2 do
      a.push('free_image/p' + i.to_s + '.png')
    end
    return a
  end

end
