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
    [formula, 'guide', 'workaround', 'cheat sheet', 'demo', 'insight', 'blog', 'vlog']
  end

  def csv_line(lang, page)
    lang.name + ',' + page.content + ',' + page.name + ',' + page.link + "\n"
  end
end
