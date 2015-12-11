class GamesController < ApplicationController
  def index
    @users = User.all
  end

  def divide_users

  end

end
