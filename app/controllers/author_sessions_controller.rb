class AuthorSessionsController < ApplicationController
    def new
    end
  
    def create
      if login(params[:email], params[:password])
        redirect_back_or_to(tags_path, notice: 'Logged in successfully.')
      else
        flash.now.alert = "Login failed."
        render action: :new
      end
    end
  
    def destroy
      logout
      redirect_to(tags_path, notice: 'Logged out!')
    end
end
