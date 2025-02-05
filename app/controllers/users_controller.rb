class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :logout, :identification]
  before_action :authenticate_user!, except: [:new]
  # before_action :redirect_root, except: [:new]
  def new
  end

  def show
  end

  def edit
  end

  def update
  end

  def logout
  end

  def identification
    @prefectures = Prefecture.all
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def redirect_root
    if @user.id != current_user.id
      redirect_to root_path
    end
  end
end
