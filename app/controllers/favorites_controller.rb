class FavoritesController < ApplicationController
    before_action :set_answer
    before_action :authenticate_user! 

    # お気に入り登録
    def create
      # if @a.user_id != current_user.id   # 投稿者本人以外に限定
        @favorite = Favorite.create(user_id: current_user.id, answer_id: @a.id)
      # end
    end
    # お気に入り削除
    def destroy
      @favorite = Favorite.find_by(user_id: current_user.id, answer_id: @a.id)
      @favorite.destroy
    end
  
    private
    def set_answer
      @a = Answer.find(params[:answer_id])
    end
end
