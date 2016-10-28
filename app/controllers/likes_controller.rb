class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]
  include SessionHelper

  # POST /likes
  # POST /likes.json
  def create
    the_article = Article.find(params[:article_id])
    @like = Like.create(user:current_user, article: the_article)
    redirect_to article_path(the_article)
  end
end
