module ApplicationHelper
  def current_language
    session[:current_language].values[1] 
  end
end
