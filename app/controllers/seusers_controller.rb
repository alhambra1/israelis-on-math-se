class SeusersController < ApplicationController
  def index
    respond_to do |f|
      f.json {render json: SeUser.all, status: 200}
      f.html {render :index}
    end
  end
  
  def querySe
    file = open("http://math.stackexchange.com/search?q=user%3A#{params[:user_id]}+" + URI::encode(params[:query])).read
    render json: {has_matches: file.match(/returned no matches/).nil?, too_many_requests: !file.match(/please wait a moment and try again/).nil?}
  end

  def page
    render json: {currentPage: Page.last.number}, status: 200
  end

  def upload
    Page.create(number: 1) if not Page.last

    params[:data][:users].each do |user_hash|
      SeUser.create(user: user_hash)
    end

    Page.last.update(number: params[:data][:page] + 1)

    render json: {page: params[:data][:page]}, status: 200
  end
end
