class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :new_hack
  
  def new_hack
     @hack = Hack.new
  end



end
