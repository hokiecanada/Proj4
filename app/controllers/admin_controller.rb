class AdminController < ApplicationController
  def index
    authenticate_admin! 
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml }
    end
  end
end