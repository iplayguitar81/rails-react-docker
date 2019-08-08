class PagesController < ApplicationController
  
  def home

  @news = News.all.with_attached_image

  end

end
