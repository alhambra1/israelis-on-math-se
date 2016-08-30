class SeusersController < ApplicationController
  def index
    render json: SeUser.all, status: 200
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
