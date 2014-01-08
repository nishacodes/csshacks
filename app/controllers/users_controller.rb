class Users::SessionsController < Devise::SessionsController
  
  def show
    @user = current_user

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
end