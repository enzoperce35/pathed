module ApplicationHelper
  def current_language
    session[:current_language].values[1] 
  end

  def no_language_set
    session[:current_language].nil?
  end
end
