class PagesController < ApplicationController    #classes have to be capitalized
  def home
  end
  def result 
    @artist=params['artist']
  end
end