class StackexhchangeuserController < ApplicationController
  require 'unirest'
  
  def index
    users = StackexchangeUser.all
    render json: users, status: 200
  end

  def upload
    Page.create(number: 1) if not Page.last
    @start_page = @current_page = Page.last.number

    while true
      resp = Unirest.get("https://api.stackexchange.com/2.2/users?page=" + @current_page.to_s + "&pagesize=100&site=math.stackexchange")
      @status_code = resp.code
      break if @status_code == 400

      resp.body["items"].each do |user_hash|
        raise user_hash.inspect
        if user_hash["location"] and user_hash["location"].match(/israel/i)
          user = StackexchangeUser.find_or_create_by(user_id: user_hash["user_id"])
          user.update(user_hash) if user
        end
      end
      
      @current_page += 1
      Page.last.update(number: @current_page)
    end

    render json: [@start_page,@current_page,@status_code]
  end
end
