class PagesController < ApplicationController
  def lobby
    @users = User.all
  end
end
