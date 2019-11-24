class AuthorSessionsController < ApplicationController
  def new
    @author = Author.new	  
  end

  def create
    @author = login(params[:email], params[:password])
    if @author
      redirect_back_or_to(root_path, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end	
end
