class SessionsController < ApplicationController
  def create
    lang = params[:lang]

    session[:current_language] = Language.find_by(name: lang)

    redirect_to root_path
  end
end
