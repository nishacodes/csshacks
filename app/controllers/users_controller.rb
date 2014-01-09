class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @name = @user.first_name

    respond_to do |format|
      format.html { render "users/sessions/show"}
      format.json { render json: @user }
    end
  end
end