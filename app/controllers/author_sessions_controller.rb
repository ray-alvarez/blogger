class AuthorSessionsController < ApplicationController
    before_action :set_author, only: [:show, :edit, :update, :destroy]
    before_action :require_login, except: [:new, :create]
    before_action :zero_authors_or_authenticated, only: [:new, :create]

    def new
    end
  
    def create
      if login(params[:email], params[:password])
        redirect_back_or_to(articles_path, notice: 'Logged in successfully.')
      else
        flash.now.alert = "Login failed."
        render action: :new
      end
    end
  
    def destroy
      logout
      redirect_to(:authors, notice: 'Logged out!')
    end
end
