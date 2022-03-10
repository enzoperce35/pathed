module PagesHelper
  def formula
    case current_language
    when 'Javascript'
      'function'
    when 'Ruby'
      'method'
    end
  end
  
  def content_types
    [formula, 'guide', 'workaround', 'cheat sheet', 'teach-in', 'blog', 'vlog']
  end
end
