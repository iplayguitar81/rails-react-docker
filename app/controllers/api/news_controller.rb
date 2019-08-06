class Api::NewsController < ApplicationController
  respond_to :json

  def index
    respond_with News.order(updated: :DESC)
  end

  private

  def news_params
      params.require(:news).permit(:title, :image, :subtitle, :body, :published, :updated)
    end

end