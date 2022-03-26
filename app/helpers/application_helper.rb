module ApplicationHelper
  def current_language
    session[:current_language].values[1] 
  end

  def no_language_set
    all_lang = Language.all.pluck(:name)
    
    current_language.nil? || !all_lang.include?(current_language)
  end
end
