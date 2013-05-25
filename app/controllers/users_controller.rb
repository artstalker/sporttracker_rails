class UsersController < ApplicationController
  before_filter :unsigned_in_user, only: [:new, :create]
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy
  def new
  	 @user = User.new
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  

  def show
    @user = User.find(params[:id])
    @bodystat = @user.bodystats.last
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
    	flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def edit
    
  end

  def update
    
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def savebodystat
    
    newbodystat = @bodystat.dup
     if newbodystat.save
      flash[:success] = "Data has been saved"
      @bodystat = newbodystat
    else
      #render 'new'
    end
  end

 
  private

    def unsigned_in_user
      redirect_to root_path  unless !signed_in?
    end

     def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin? && params[:id].to_i!=current_user.id
    end
end
