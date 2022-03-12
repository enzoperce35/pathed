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
    [formula, 'guide', 'sample', 'TOP lesson', 'workaround', 'cheat sheet', 'demo', 'insight', 'blog', 'vlog']
  end

  def backup_line(lang, page)
    lang.name + ',' + page.content + ',' + page.name + ',' + page.link
  end
end
