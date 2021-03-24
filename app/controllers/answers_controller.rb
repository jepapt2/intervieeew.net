class AnswersController < ApplicationController
  before_action :content_set, :head_set
  require 'class/select_image'

  def index
    @search = Answer.ransack(params[:q])
    @as = @search.result.page(params[:page]).per(12)
  end

  def show
    @a = Answer.find_by(public_uid: params[:id])
    a_content_post_set
    a_head_post_set
    a_q_content_post_set
    thumbnail
  end

  def new
    @q = Question.find_by(public_uid: params[:id])
    if user_signed_in?
      @a = current_user.answers.new
      s_i = SelectImage.new
      @select_image = s_i.image
      q_content_post_set
      a_content_post_set
      a_head_post_set
    else
      redirect_to new_user_session_path
    end
  end

  # def confirm
  #   @a = current_user.answers.new(a_params)
  #   @q = Question.find_by(public_uid: params[:id])
  #   s_i = SelectImage.new
  #   @select_image = s_i.image
  #   q_content_post_set
  #   a_content_post_set
  #   a_head_post_set
  #   thumbnail
  #   render :new if @a.invalid?
  # end

  def create
    @a = current_user.answers.new(a_params)
    @q = Question.find_by(public_uid: params[:id])
    s_i = SelectImage.new
    @select_image = s_i.image
    q_content_post_set
    a_content_post_set
    a_head_post_set
    thumbnail
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
    if user_signed_in?
      @a = Answer.find_by(public_uid: params[:id])
      s_i = SelectImage.new
      @select_image = s_i.image
      a_content_post_set
      a_head_post_set
      a_q_content_post_set
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @a = Answer.find_by(public_uid: params[:id])
    # @a.update(a_params)
    s_i = SelectImage.new
    @select_image = s_i.image
    a_content_post_set
    a_head_post_set
    a_q_content_post_set
    thumbnail
    if @a.update_attributes(a_params)
      if @a.saved_change_to_select_image?
        @a.update_attributes( image: "")
      end
      redirect_to a_show_url(@a)
    else
      render :edit
    end

    # if @a.saved_change_to_image?
    #   @a.select_image = ''
    #   @a.save
    # else @a.seved_change_to_select_image?
    #   @a.image.destroy
    # end
  end

  private
  def a_params
    params.require(:answer).permit(:title, :answerer, :overview, @content_array, @head_array, :image, :image_cache, :select_image, :question_id, :tag_list)
  end 

end
