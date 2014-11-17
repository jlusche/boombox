class PagesController < ApplicationController    #classes have to be capitalized
  def home
  end

  def result 
    artist=params['artist']
    url_safe_artist = artist.gsub(' ', '+')
    echo_result= HTTParty.get"http://developer.echonest.com/api/v4/artist/search?api_key=Q8MXVVC4CMXZEIHEG&name=#{url_safe_artist}"
    @all_artists= echo_result['response']['artists']
   
  end
end