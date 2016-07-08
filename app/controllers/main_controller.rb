class MainController < ApplicationController
  def index
    @data = RestClient.get('https://itunes.apple.com/search', {
        params: { term: params[:term] }
        })
    @data = JSON.parse(@data)['results']
  end
  def search
  end
end
