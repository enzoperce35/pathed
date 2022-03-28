module ApplicationHelper
  def session_language
    session[:current_language]
  end

  def no_language_set
    session[:current_language].nil?
  end
end
