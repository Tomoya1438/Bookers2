class UsersController < ApplicationController
  def index
    @us = User.all
    @user = User.new
  end
  
  def show
    
  end

  def edit
  end
end
