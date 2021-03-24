class ToppagesController < ApplicationController
  def index
    @fav_top = Answer.order('id desc').limit(50).select('answers.*', 'count(favorites.id) AS favs').left_joins(:favorites).group('answers.id').reorder('favs desc').first
    @fav_side = Answer.order('id desc').limit(50).select('answers.*', 'count(favorites.id) AS favs').left_joins(:favorites).group('answers.id').reorder('favs desc').limit(3).offset(1)
    @a_new = Answer.order('id desc').first(3)
    @q_fav = Question.order('id desc').limit(50).select('questions.*', 'count(answers.id) AS answers').left_joins(:answers).group('questions.id').reorder('answers desc').limit(3)
    @q_new = Question.order('id desc').first(3)
  end
end
