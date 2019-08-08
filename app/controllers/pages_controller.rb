class PagesController < ApplicationController
  def home

  	@news = News.with_attached_image
  	
  end
end
